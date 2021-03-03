# Flaky test tool - ML APIs Python

> Note: This tool is a work-in-progress, and may not work
> for all ML API python repos.

## Python directory

Currently, python directory has test and sample which
fails one out of ten times randomly to produce the flakiness.

### Prerequisites
You will need to set up the local development environment by
[installing the Google Cloud SDK][cloud-sdk] and running the following commands in command line:
`gcloud auth login` and `gcloud config set project [YOUR PROJECT ID]`.

### Installation and setup

Install python dependencies

```code
pip install -r requirements.txt

```

## Before you begin

### Supported Python Versions

Python >= 3.6

1. pip install pytest
1. pip install -r requirements.txt (if it is ML APIs repo)

## Using the shell script

* make bash script file executable

    ```
    chmod +x flaky_report_tool.sh
    ```

* execute the script in context to make available for usage

    ```
    source flaky_report_tool.sh 
    ```

* call bash function with **flaky_tester** *python_test_file_test.py* *output_file_path.txt*

1. Python test file path (required)
2. Output text file (optional)

    ```
    source flaky_report_tool.sh python/fake_quickstart_test.py output_text.txt
    ```
