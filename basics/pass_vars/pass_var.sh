#! /bin/bash

hours=5

awk -v h=$hours -f pass_var.awk testfile.txt
