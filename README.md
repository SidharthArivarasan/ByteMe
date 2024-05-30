# ByteMe: A Machine Learning-based Defense & Attack Toolkit for Windows PE Files

Welcome to ByteMe, a comprehensive toolkit designed for both defending against and launching strategic attacks on Windows Portable Executable (PE) files. Developed as part of CSCE 689 ML-Based Cyber Defenses by [Dr. Marcus Botacin](https://marcusbotacin.github.io/) at Texas A&M University during the Spring 2024 semester, ByteMe combines machine learning algorithms with cybersecurity expertise to provide a solution for analyzing and protecting Windows executables.

Whether you're a cybersecurity researcher, student, or enthusiast, ByteMe offers a powerful set of tools and resources to enhance your understanding of malicious PE files, develop robust defense mechanisms, and explore offensive strategies.

Get started with ByteMe today and join us in the mission to advance ML-based cyber defenses in the ever-evolving realm of cybersecurity.

## Defense Challenge
The defense challenge focuses on creating a robust machine learning model capable of identifying malicious PE files with high accuracy while maintaining efficiency in terms of resource usage and response time.

### Goals
- **False Positive Rate (FPR):** ≤ 1%
- **True Positive Rate (TPR):** ≥ 95%

### Constraints
- **Memory:** Maximum of 1 GB RAM
- **Response Time:** Each sample must be processed within 5 seconds

**Note:** If the model takes longer than 5 seconds to respond, it will be considered an evasion.

### Deliverable
A self-contained Docker image that includes the machine learning model and a web server to handle HTTP requests for model querying.

### Implementation Guide
1. **Model Development:** Train a machine learning model to classify PE files as malicious or benign.
2. **Web Server Setup:** Integrate the model into a web server to handle HTTP POST requests for file analysis.
3. **Dockerization:** Package the web server and model into a Docker image. Ensure the Docker image adheres to the specified memory and response time constraints.
4. **Testing:** Rigorously test the Docker container to ensure it meets the TPR and FPR goals under the defined constraints.

## Attack Challenge
The attack challenge involves crafting evasive malware binaries that can bypass the defenses of as many models as possible while maintaining the functionality of the original malware.

### Goals
- Evade the detection of the maximum number of models

### Constraints
- **File Size:** Up to 5 MB of appended data
- **Execution:** Evasive samples must execute equivalently to the original samples in the sandbox environment

### Deliverable
A set of evasive malware binaries designed to evade detection.

### Implementation Guide
1. **Understanding Target Models:** Analyze the defensive models to understand their detection mechanisms.
2. **Crafting Evasive Samples:** Modify the malware binaries to evade detection while keeping their malicious functionality intact. Ensure that the modifications do not exceed 5 MB of additional data.
3. **Testing:** Verify that the modified binaries perform the same actions as the original samples in a sandbox environment and evade detection by as many models as possible.

### Minimum Score for Grading
At least one modified sample must successfully bypass at least one model.

## Our Team
Our team is composed of dedicated and skilled members who have contributed significantly to the success of the ByteMe project. Each member brought their unique expertise and effort to overcome the challenges posed by both the defense and attack tasks.

- **Ali Ayati** - Defense Engineer

  It's me :)) My role was devising and building the pipeline to successfully pass the defense challenge. I was also responsible to make our system met the required accuracy and efficiency benchmarks.

- **Sidharth Arivarasan** - Database Engineer

  Sidharth was responsible for managing and optimizing the database, which was crucial for the efficient handling and processing of large datasets.

- **Sahil Salunkhe** - Attack Engineer

  Sahil was instrumental in the attack phase, working tirelessly to tweak the malware samples to evade detection by both our models and those of other teams. His innovative approach and persistence led to the creation of highly evasive malware binaries.

Together, our team successfully navigated the complex requirements of the MLSEC course, demonstrating strong collaboration and technical prowess. We are proud to have achieved our goals and contributed to the field of ML-based cyber defenses.

## Getting Started and Competition Results
To begin using ByteMe, please refer to the subfolders dedicated to the `attacker` and `defender` challenges. Each subfolder contains the necessary code, instructions, and resources to help you set up and run the respective components of the project:

- [attacker](https://github.com/seyyedaliayati/ByteMe/tree/main/attacker)
- [defender](https://github.com/seyyedaliayati/ByteMe/tree/main/defender)

## Credits and References
- [Project yarGen](https://github.com/Neo23x0/yarGen)
- [Bartblaze's Yara-rules](https://github.com/bartblaze/Yara-rules/)
- [ML-Sec Competition 2021](https://github.com/fabriciojoc/2021-Machine-Learning-Security-Evasion-Competition)
- [Dr. Botacin's Dropper](https://github.com/marcusbotacin/Dropper/tree/master)
- [Ember Dataset](https://github.com/elastic/ember)
