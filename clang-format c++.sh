#!/usr/bin/env bash

CLANG_FORMAT="/usr/local/bin/clang-format"

for DIRECTORY in $DIRECTORY
do
	echo "Formatting code under $DIRECTORY/"
	find "$DIRECTORY" \( -name '*.cpp' -or -name '*.CPP' -or -name '*.cxx' -or -name '*.CXX' -or -name '*.c++' -or -name '*.cc' -or -name '*.cp' -or -name '*.hh' -or -name '*.hpp' -or -name '*.hxx' -or -name '*.Hxx' -or -name '*.HXX' \) -print0 | xargs -0 "$CLANG_FORMAT" -i
done