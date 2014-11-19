#!/bin/sh
bindir=$(pwd)
cd /Users/user/Projects/OpenGLTutorials/OpenGL-tutorial_v0014_21/tutorial12_extensions/
export DYLD_LIBRARY_PATH=:$DYLD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /Users/user/Projects/OpenGLTutorials_bin_XCode/MinSizeRel/tutorial12_extensions 
	else
		"/Users/user/Projects/OpenGLTutorials_bin_XCode/MinSizeRel/tutorial12_extensions"  
	fi
else
	"/Users/user/Projects/OpenGLTutorials_bin_XCode/MinSizeRel/tutorial12_extensions"  
fi
