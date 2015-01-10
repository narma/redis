#!/bin/sh


# "--pre-js <file>"
#    Specify a file whose contents are added before the generated code.
#    This is done *before* optimization, so it will be minified properly
#    if the *Closure Compiler* is run.

# "--post-js <file>"
#    Specify a file whose contents are added after the generated code.
#    This is done *before* optimization, so it will be minified properly
#    if the *Closure Compiler* is run.

# "--embed-file <file>"
#    Specify a file (with path) to embed inside the generated
#    JavaScript. The path is relative to the current directory at
#    compile time. If a directory is passed here, its entire contents
#    will be embedded.


emmake make redis-server
cp redis-server redis-server.bc

#emcc -s ASSERTIONS=2 -g2 redis-server.bc -o redis-server.html
emcc  -O2 --closure 1  redis-server.bc -o rserver.js

#emcc redis-server.bc -o node-redis-server.js
