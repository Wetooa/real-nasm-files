

#!/bin/bash

nasm.exe -felf64 $1.asm && ld $1.o -o $1 && ./$1