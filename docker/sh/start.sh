#!/bin/bash

find . \
    -maxdepth 1 \
    -type f \( -iname \*.exe -o -iname \*.msi \) \
    -exec innoextract -p1 -e --collisions=rename-all -d {}_extract/ {} \;