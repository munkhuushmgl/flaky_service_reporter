# Flaky test tool - ML APIs Python

> Note: This tool is a work-in-progress, and may not work
> for all ML API python repos.

## Python directory

Currently, python directory has test and sample which 
fails one out of ten times randomly to produce the flakiness.

### Prerequisites

You will need a [Google Cloud Platform Console][developer-console] project with the Cloud AI Platform [API enabled][enable-api].
You will need to [enable billing][enable-billing] to use Google Cloud AI Platform.
[Follow these instructions][create-project] to get your project set up. You will also need to set up the local development environment by
[installing the Google Cloud SDK][cloud-sdk] and running the following commands in command line:
`gcloud auth login` and `gcloud config set project [YOUR PROJECT ID]`.

### Installation and setup

Install python dependencies

```code
pip install -r requirements.txt

```
