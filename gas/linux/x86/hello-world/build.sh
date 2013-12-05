#!/bin/bash

as -o hello-world.o hello-world.asm
ld -s -o hello-world hello-world.o
