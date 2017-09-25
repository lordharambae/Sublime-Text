#!/usr/bin/env bash

CLANG_FORMAT="/usr/local/bin/clang-format"

for DIRECTORY in $DIRECTORY
do
	echo "Formatting code under $DIRECTORY/"
	find "$DIRECTORY" \( -name '*.c' -or -name '*.C' -or -name '*.h' -or -name '*.H' \) -print0 | xargs -0 "$CLANG_FORMAT" -i
done
