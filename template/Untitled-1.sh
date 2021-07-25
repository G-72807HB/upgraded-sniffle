# clean leftover
[[ -e "temp" ]] && rm "temp"

# get and move to script dir
BASEDIR=$(dirname $0)
cd ${PWD}/${BASEDIR}/

# check prerequisites
programs=("gcc" "python" "gnuplot" "ffmpeg")
for i in "${programs[@]}"; do
    if ! command -v $i &> /dev/null; then
        echo "Please install "$i" to proceed"
        exit
    fi

done