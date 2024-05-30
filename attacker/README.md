# Our Solution to The Attacker Challenge
In the attack phase, our team aimed to bypass the defense models, including our own, by modifying malware samples. We created several variants to test against the models.

**Malware Variants Created:**
- Single shot + Goodware Strings
- Single shot + 47 more Imports
- Single shot + 20 Exports
- Single shot + Goodware Strings + 47 more - Imports
- Single shot + Goodware Strings + 20 Exports
- Single shot + 47 more Imports + 20 Exports
- Single shot + Goodware Strings + 47 more - Imports + 20 Exports

**Binary Samples:**
Variants v1 and v2 were developed to test the robustness of the models.
- v1: Aimed to bypass all models.
- v2: Designed to bypass all models except ours.

## Local Results
### v1 Bypass Rate:
All teams achieved a 100.00% bypass rate.

### v2 Bypass Rate:
- Team 1: 100.00%
- Team 2: 100.00%
- Team 3: 100.00%
- Team 4: 50.00%
- Team 5: 99.00%
- Team 6: 100.00%
- Team 7: 100.00%

Our variants demonstrated the ability to successfully bypass the defense models, indicating the effectiveness of our attack strategies.

## Competition Results
Sadly, it wasn't as good as the local results but still reliable and better that most teams.

![](https://raw.githubusercontent.com/seyyedaliayati/ByteMe/main/imgs/attacker_results.png)

## Usage
Modify a single binary
```sh
python modify.py <binary-file-path>
```

Modify all binaries in a directory:
1. Open `run.bat` file.
2. Set variable `directory` to the directory including binary files.
3. Run `run.bat`
