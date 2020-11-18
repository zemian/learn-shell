function foo {
  echo "Inside foo function"
}
foo

function foo_params {
  echo "param1: $1"
  echo "param2: $2"
  echo "all params: $@"
}
foo_params one two three
