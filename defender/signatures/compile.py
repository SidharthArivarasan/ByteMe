import os

from main import compile_and_save_rules

ROOT_DIR = os.path.abspath(os.path.dirname(__file__))

compile_and_save_rules(os.path.join(ROOT_DIR, "rules", "malware"))
compile_and_save_rules(os.path.join(ROOT_DIR, "rules", "packer_crypto"))
compile_and_save_rules(os.path.join(ROOT_DIR, "rules", "yaraGen"))
