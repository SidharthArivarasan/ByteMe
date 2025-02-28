
import logging

from featureـextractor import extract_features_2
from signatures import get_rules, has_match

import gzip
import _pickle as cPickle
import pandas as pd


def load_gzip_pickle(filename):
    fp = gzip.open(filename, 'rb')
    obj = cPickle.load(fp)
    fp.close()
    return obj


logging.info("Loading model 1...")
# trained model on updated dataset
ember_classifier = load_gzip_pickle("./models/ember_model.pkl")

logging.info("Loading yara rules...")
malware_rules, packer_crypto_rules, yara_gen_rules = get_rules()


def get_ember_prediction(features, classifier, threshold=None):
    f = pd.DataFrame([features])

    if threshold:
        y_pred = classifier.predict_threshold(f, threshold=threshold)
    else:
        y_pred = classifier.predict(f)

    if len(y_pred) == 1:
        return y_pred[0]
    else:
        return 0


def get_result(filepath: str) -> int:

    has_malware_signature = has_match(malware_rules, filepath)
    if has_malware_signature:
        return 1
    has_packer_crypto_signature = has_match(packer_crypto_rules, filepath)
    has_generic_signature = has_match(yara_gen_rules, filepath)

    features_2 = extract_features_2(filepath)
    em1 = get_ember_prediction(features_2, ember_classifier)
    logging.info(
        f"EMBER1: {em1}, Packer: {has_packer_crypto_signature}, Generic: {has_generic_signature}")
    major_vote = has_packer_crypto_signature + has_generic_signature + em1

    if major_vote >= 2:
        return 1
    return 0


if __name__ == "__main__":
    goodware = "/root/ali/goodwares/fff32ccd4f6dfdde4c80710074fa78dda53f1aaeaa67c1936a61e38270efa437.exe"
    malware = "/root/ali/malwares/00000fa1585e99fcb5e8728b96f173ff61b08fc152e2f50d715f6d596dec42fb.exe"
    get_result(malware)
