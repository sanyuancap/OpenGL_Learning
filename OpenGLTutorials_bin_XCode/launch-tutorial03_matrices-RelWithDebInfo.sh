#!/bin/sh
bindir=$(pwd)
cd /Users/user/Projects/OpenGLTutorials/OpenGL-tutorial_v0014_21/tutorial03_matrices/
export DYLD_LIBRARY_PATH=:$DYLD_LIBRARY_PATH

if test "x$1" = "x--debugger"; then
	shift
	if test "x" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		 -batch -command=$bindir/gdbscript  /Users/user/Projects/OpenGLTutorials_bin_XCode/RelWithDebInfo/tutorial03_matrices 
	else
		"/Users/user/Projects/OpenGLTutorials_bin_XCode/RelWithDebInfo/tutorial03_matrices"  
	fi
else
	"/Users/user/Projects/OpenGLTutorials_bin_XCode/RelWithDebInfo/tutorial03_matrices"  
fi
