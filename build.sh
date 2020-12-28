#!/bin/sh

cd cmds && ./build.pl && cd ..
cd shell && ./build.pl && cd ..
cd ref && ./build.pl && cd ..
