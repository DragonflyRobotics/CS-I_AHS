#!/bin/bash
# NB: It's important to redirect stderr because merlin will fail a compilaition if ANYTHING
#     is sent to stderr.
#     In the case of karel, ATOMICSHIMS are required.
#     When the package is downloaded, this fact is sent to stderr.
#     We therefore ignore this case unless an error occurs.
makeSwift "$@" > compile.out 2> compile.err
result=$?
cat compile.out
if [[ $result -ne 0 ]]
then
    >&2 cat compile.err
fi

