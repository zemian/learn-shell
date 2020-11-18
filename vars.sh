# Value assignment must not have space!
FOO=test
FOO2="test2"
echo $FOO
echo $FOO2

FOO3="var inside a string $FOO"
echo $FOO3

# Position argument parameters (from the script)
echo "First arg $1"
echo "Second arg $2"
echo "All args $@"
# the ${@} is a n array

## Changing $@
set -- 1 2 3 4 5 6 7 8 9 0 a b c d e f g h
echo "$@"

# Variable Expansion
# http://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html

## Default var value
FIRST_ARG=${1:-HELLO}
echo "FIRST_ARG=$FIRST_ARG"
