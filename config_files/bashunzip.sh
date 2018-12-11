#!/bin/bash

for zip in *.zip; do
    7z x "$zip" -o*
done
