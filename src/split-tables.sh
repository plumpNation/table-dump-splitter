#!/bin/bash

# Usage: ./split-sql yoursqlfile.sql

mkdir -p output;

sh ./bin/mysqldumpsplitter \
    --source $1 \
    --extract ALLTABLES \
    --decompression none \
    --compression none \
    --output_dir output/raw
