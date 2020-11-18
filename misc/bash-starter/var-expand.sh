#!/bin/bash

#https://www.gnu.org/software/bash/manual/bashref.html#Shell-Parameter-Expansion

# Use ":-" 
# Evaluate a var, if empty use a default value
PARAM1=${PARAM1:-"Hello1"}
echo "PARAM1=$PARAM1"

# Use of ":="
# Same as above but redundant since the auto expand will also
# perform assigment, so you do not need to reassign again, but
# to use it immediately.
#PARAM2=${PARAM2:="Hello2"}
echo "PARAM2=${PARAM2:="Hello2"}"
# Let's check again after auto assignment.
echo "PARAM2=$PARAM2"

# Handle position parameters
PARAM3=${1:-"Hello3"}
echo "PARAM3=$PARAM3"
