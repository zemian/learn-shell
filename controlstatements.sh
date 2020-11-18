## https://www.gnu.org/software/bash/manual/html_node/Conditional-Constructs.html
## https://www.gnu.org/software/bash/manual/html_node/Looping-Constructs.html
#
# "if"
# if test-commands; then
#   consequent-commands;
# [elif more-test-commands; then
#   more-consequents;]
# [else alternate-consequents;]
# fi
#
# "case"
# case word in
#     [ [(] pattern [| pattern]…) command-list ;;]…
# esac
#
# "while"
# while test-commands; do consequent-commands; done
#
# "for"
# for name [ [in [words …] ] ; ] do commands; done
#


## Conditional Expressions
# https://www.gnu.org/software/bash/manual/html_node/Bash-Conditional-Expressions.html
#
# NOTE: the "(( expression ))" is for Shell arithmetic (math operations)
#       https://www.gnu.org/software/bash/manual/html_node/Shell-Arithmetic.html#Shell-Arithmetic
#
# Below example uses "[[ expression ]]" condition
#

# Comparing numbers
if [[ 111 -lt 222 ]]; then
  echo "left number is less than right";
fi
# OP is one of ‘-eq’, ‘-ne’, ‘-lt’, ‘-le’, ‘-gt’, or ‘-ge’. These arithmetic binary operators

# Comparing strings
if [[ 'foo' == 'foo' ]]; then
  echo "strings are equal";
fi
# You can use '==' or '=' for compare
# Use '!=' for not equal

# String non-zero length is true, or use '-n' test
foo=' '
if [[ -n $foo ]]; then
  echo "foo is not empty"
fi
