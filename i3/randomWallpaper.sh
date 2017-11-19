#!/bin/bash

files=($HOME/wallpapers/nature/*)
printf "%s\n" "${files[RANDOM % ${#files[@]}]}"
