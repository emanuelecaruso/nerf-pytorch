SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
PYTHONSCRIPT=${SCRIPTPATH}"/run_nerf.py"
CONFIGSFILE=${SCRIPTPATH}"/configs/lego.txt"
ENVFILE=${SCRIPTPATH}"/env/bin/activate"


# Find env activation file
#if [ -f "$ENVFILE" ]; then
#    echo "Environment file found"
#else 
#    echo "$FILE does not exist. (Environment not found)"
#    exit
#fi

# Find python script
if [ -f "$PYTHONSCRIPT" ]; then
    echo "Python script found"
else 
    echo "$FILE does not exist."
    exit
fi

# Install requirements
#pip install -r requirements.txt

# Run nerf
python ${PYTHONSCRIPT} --config ${CONFIGSFILE}
