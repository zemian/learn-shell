## How to get file extension
# https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
fullfile=/tmp/test.txt
filename=$(basename -- "$fullfile")
extension="${filename##*.}"
filename="${filename%.*}"
echo "filename=$filename"
echo "extension=$extension"

## How to get substring
string=01234567890abcdefgh
echo ${string:7} # 7890abcdefgh
echo ${string:7:2} # 78
