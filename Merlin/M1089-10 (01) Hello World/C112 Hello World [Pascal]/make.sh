#!/bin/bash

# fpc currently will produce warning text from the linker to stderr
# we suppress this text unless the result code is non-zero, as would be
# the case of an actual error
fpc hello.pas > pascal.out 2> pascal.err
result=$?
cat pascal.out
if [[ $result -ne 0 ]]
then
    >&2 cat pascal.err
fi

