# https://www.gnu.org/software/bash/manual/html_node/Command-Grouping.html#Command-Grouping

# The "( list )" will execute in subshell!
echo "subshell output"
( date; ls )

# NOTE: Since the list is executed in a subshell, variable assignments do not
# remain in effect after the subshell completes.
echo "subshell var assignment"
( FOO='hello' )
echo $FOO


# The "{ list; }" will execute in current shell, it needs to end with ';'
echo "currentshell output"
{ date; ls; }

echo "currentshell var assignment"
{ FOO2='hello2'; }
echo $FOO2
