"""

labelImg project for Image Annotation


Original project:
	- https://github.com/tzutalin/labelImg

Sydeaka's forked version with working example + additional setup instructions: 
	- https://github.com/sydeaka/labelImg



Features:
- Demo video: https://youtu.be/p0nR2YsCY_U
- To open the software:
	- Follow installation instructions
	- In a terminal, execute the `python3 labelImg.py...` code
- Load file of pre-defined classes to minimize typing
	- Can also add new classes on the fly
- Draw rectangle around an object/feature and select the class from the dropdown menu
- Save the output as an XML file
	- Can open the XML file to see an example of how it is structured
- Easily move from one image to another to review previous annotations
- Default label might be useful if you want to look for one class at a time
- To exit, close the software window (red X in upper left corner)

"""


## Install miniconda 
# NAME:  Miniconda3
# VER:   4.8.2
# PLAT:  osx-64
# LINES: 569
# MD5:   e947884fafc78860e75e43579fa3c270
# https://docs.conda.io/en/latest/miniconda.html

# If on Windows machine, activate conda environment before proceeding with
#   the following commands.

# Set parameters
export project_folder=$HOME/Documents/Github/labelImg
export env_name=bryant_image_labeling

# Install modules
pip install --upgrade pip
pip install pipenv
pip install virtualenv

# Create environment and activate it
cd $project_folder
virtualenv $env_name
source $env_name/bin/activate

# Upgrade pip within the environment
pip install --upgrade pip

# Clone the labelImg repository
cd image-labeling
git clone https://github.com/sydeaka/labelImg.git


# Follow the installation instructions for your machine
# Instructions: https://github.com/sydeaka/labelImg
# For example, below is what I did for Mac OS
pipenv run pip install pyqt5==5.13.2 lxml
pipenv run make qt5py3
cd labelImg
# Needed ths for MAC
# Reference: https://github.com/tzutalin/labelImg/issues/510
# 
pyrcc5 -o libs/resources.py resources.qrc

# Optional (for MAC)
rm -rf build dist; python setup.py py2app -A;mv "dist/labelImg.app" /Applications