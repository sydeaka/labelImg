"""
Running the code

"""

# Option #1: Open with no arguments
# Specify image path and output path in the UI
# No pre-defined classes. Create them as you to
python3 labelImg.py









# Option #2: Specify the path to the images along with a class definition file
# Specify image path, output path, and pre-defined classes ahead of time
# Avoids having to manually do it later
export PATH_TO_IMAGES=example/images
export CLASS_DEFINITION_FILE=example/class_definitions.txt
export OUTPUT_PATH=example/output
export project_folder=$HOME/Documents/Github/labelImg
export env_name=bryant_image_labeling

cd $project_folder
virtualenv $env_name
source $env_name/bin/activate

python3 labelImg.py $PATH_TO_IMAGES $CLASS_DEFINITION_FILE $OUTPUT_PATH
