#!/bin/bash
chmod +x setup_and_run.sh

# Print current working directory
pwd

# Install Robot Framework and Robot Framework AppiumLibrary
python3 -m pip install robotframework
python3 -m pip install robotframework-appiumlibrary

# Print Python version and installed packages
python3 --version
pip3 list

# Run the Robot Framework test suite specified in the requirements.txt file
