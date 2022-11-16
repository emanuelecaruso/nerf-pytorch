
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
PYTHONSCRIPT=${SCRIPTPATH}"/run_nerf.py"
CONFIGSFILE=${SCRIPTPATH}"/configs/schaeffler_multiview.txt"
ENVFILE="/home/venvs/torch_1.11.0_ema/bin/activate"


# Find env activation file
if [ -f "$ENVFILE" ]; then
    echo "Environment file found"
else 
    echo "$FILE does not exist. (Environment not found)"
    exit
fi

# Find python script
if [ -f "$ENVFILE" ]; then
    echo "Python script found"
else 
    echo "$FILE does not exist."
    exit
fi

# Run nerf
python3.8 ${PYTHONSCRIPT} --config ${CONFIGSFILE}
