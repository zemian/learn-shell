# ## How to get file extension
# # https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
# fullfile=/tmp/test.txt
# filename=$(basename -- "$fullfile")
# extension="${filename##*.}"
# filename="${filename%.*}"
# echo "filename=$filename"
# echo "extension=$extension"
#
# ## How to get substring
# string=01234567890abcdefgh
# echo ${string:7} # 7890abcdefgh
# echo ${string:7:2} # 78

# ## Remove prefix string
# foo='mydata'
# foo2=${foo#my}
# foo3=${foo#"my"}
# echo "foo=$foo"
# echo "foo2=$foo2"
# echo "foo3=$foo3"
#
# ## Remove suffix string
# foo='mydata'
# foo2=${foo%data}
# foo3=${foo%"data"}
# echo "foo=$foo"
# echo "foo2=$foo2"
# echo "foo3=$foo3"

## Replace string
foo='mydata'
foo2=${foo/da/Da}
echo "foo2=$foo2"
