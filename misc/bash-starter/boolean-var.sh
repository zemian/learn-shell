#!/usr/bin/env bash

# Bash Shell does not have boolean variable. We can only simulate
# it using STRING/WORD! Hence, we need to check/compare it as string!

# See 
# - http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html
# - https://stackoverflow.com/questions/2953646/how-to-declare-and-use-boolean-variables-in-shell-script

# OS specific support (must be 'true' or 'false').
cygwin=false
msys=false
darwin=false
nonstop=false
case "`uname`" in
  CYGWIN* )
    cygwin=true
    ;;
  Darwin* )
    darwin=true
    ;;
  MINGW* )
    msys=true
    ;;
  NONSTOP* )
    nonstop=true
    ;;
esac

# == Checking single boolean var
#DANGER: Checking boolean variable like this is NOT correct!
# You might think it's right, but wait til you see $cygwin case!
if [ $darwin ] ; then
	echo "DANGER: You are running MacOSX"
else
	echo "DANGER: You are not on a MacOSX"
fi
if [ $cygwin ] ; then
	echo "FAILED: You are running CYGWIN"
else
	echo "FAILED: You are not on a CYGWIN"
fi
# Fix
if [ $darwin = true ] ; then
	echo "Fix: You are running MacOSX"
else
	echo "Fix: You are not on a MacOSX"
fi
if [ $cygwin = true ] ; then
	echo "Fix: You are running CYGWIN"
else
	echo "Fix: You are not on a CYGWIN"
fi

# == Checking multiple boolean vars
# NOTE: This does not work!
if [ $cygwin -o $msys ] ; then
	echo "FAILED: You are running CYGWIN or MSYS"
else
	echo "FAILED: You are not on a CYGWIN or MSYS"
fi
# NOTE: This does not work either!
if [ $cygwin ] || [ $msys ] ; then
	echo "FAILED#2: You are running CYGWIN or MSYS"
else
	echo "FAILED#2: You are not on a CYGWIN or MSYS"
fi
# Fix:
if [ $cygwin = true ] || [ $msys = true ] ; then
	echo "You are running CYGWIN or MSYS"
else
	echo "You are not on a CYGWIN or MSYS"
fi
# Fix#2:
if [ $cygwin = true -o $msys = true ] ; then
	echo "Fix#2: You are running CYGWIN or MSYS"
else
	echo "Fix#2: You are not on a CYGWIN or MSYS"
fi

if [ $cygwin = true -o $darwin = true ] ; then
	echo "You are running CYGWIN or MacOSX"
else
	echo "You are not on a CYGWIN or MacOSX"
fi

if [ $darwin = true -o $cygwin = true ] ; then
	echo "You are running CYGWIN or MacOSX"
else
	echo "You are not on a CYGWIN or MacOSX"
fi
