# # https://www.gnu.org/software/bash/manual/html_node/Shell-Functions.html
#
# # Use function keyword
# function foo {
#   echo "Inside foo function"
# }
# # When calling function, we do not use paranthese!
# foo
#
# function foo_params {
#   echo "param1: $1"
#   echo "param2: $2"
#   echo "all params: $@"
# }
# foo_params one two three
#
# # Another alternate form
# bar() {
#   echo "We can use the parantheses in fuction declaration."
# }
# bar
#
# # Optional arguments
# function opt_args {
#   FIRST_ARG=${1:-HELLO}
#   echo "FIRST_ARG=$FIRST_ARG"
# }
# opt_args
# opt_args 'one'
#
# # Argument count
# function opt_count {
#   echo "args count $#"
# }
# opt_count
# opt_count 1 2 3 4 5

## Positional arguments
function foo {
  echo '$@='"$@"
  echo '$#='"$#"
  echo '$1='"$1"
  echo '$2='"$2"
  echo '${10}='"${10}"

  # var expansion with position argument - strip prefix
  echo '${2#t}='"${2#t}"
}
foo one two threee 9 8 7 0 1 2 3 4 5 6 7 8 9
