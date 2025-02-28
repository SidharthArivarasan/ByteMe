import os

import yara

ROOT_DIR = os.path.abspath(os.path.dirname(__file__))


def is_valid_yara_rule_file(file_path):
    try:
        yara.compile(filepath=file_path)
        return True
    except yara.SyntaxError as e:
        print(f"Syntax error in YARA rule file: {e}")
        return False
    except Exception as e:
        print(f"Error loading YARA rule file: {e}")
        return False


def compile_and_save_rules(directory):
    if not os.path.isdir(directory):
        raise FileNotFoundError(f"Directory {directory} not found")
    folder_name = os.path.basename(directory)
    filepaths = dict()
    build_dir = os.path.join(ROOT_DIR, "build")
    
    if not os.path.exists(build_dir):
        os.makedirs(build_dir)

    out_file = os.path.join(build_dir, f"{folder_name}.yarac")

    for root, dirs, files in os.walk(directory):
        for file in files:
            filepath = os.path.join(root, file)
            if not is_valid_yara_rule_file(filepath):
                continue
            filepath = os.path.join(root, file)
            filepaths[f"{folder_name}/{file}"] = filepath
    if not filepaths:
        print(f"No valid YARA rule files found in {directory}")
        return None
    try:
        rules = yara.compile(filepaths=filepaths)
        rules.save(f"{out_file}")
        print(f"Compiled {len(filepaths)} YARA rule files to {out_file}")
        return rules
    except Exception as e:
        print(f"Error compiling YARA rules: {e}")
        return None


def load_rules_from_file(file_path):
    try:
        rules = yara.load(file_path)
        return rules
    except Exception as e:
        print(f"Error loading YARA rules from {file_path}: {e}")
        return None


def has_match(rules: yara.Rules, file_path) -> int:
    try:
        matches = rules.match(file_path)
        if matches:
            return 1
        else:
            return 0
    except Exception as e:
        print(f"Error matching YARA rules: {e}")
        return 0


def get_rules():
    """
    Returns:
        malware_rules: YARA rules for malware detection
        packer_crypto_rules: YARA rules for packer/crypter detection
        yara_gen_rules: YARA rules for malware detection
    """
    malware_rules = load_rules_from_file(os.path.join(ROOT_DIR, "build", "malware.yarac"))
    packer_crypto_rules = load_rules_from_file(os.path.join(ROOT_DIR, "build", "packer_crypto.yarac"))
    yara_gen_rules = load_rules_from_file(os.path.join(ROOT_DIR, "build", "yaraGen.yarac"))
    return malware_rules, packer_crypto_rules, yara_gen_rules


if __name__ == "__main__":
    m, p, g = get_rules()
    print(
        has_match(g, "/root/ByteMe_test/datasets/mw6/003")
    )
    print("Done")
