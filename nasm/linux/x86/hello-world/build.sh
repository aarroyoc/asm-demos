#!/bin/bash

echo "Starting ASM hello-world with Nasm"
echo "[1] NASM"
nasm -f elf -o hello-world.o hello-world.asm
echo "[2] Linking with LD"
ld -o hello-world hello-world.o
