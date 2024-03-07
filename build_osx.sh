#!/bin/bash
echo "On MacOS, we provide a Brewfile to easily install all required packages."
echo "To install, please do:"
echo "  brew update && brew bundle --file=Brewfile"
mkdir build
echo "Executing cmake"
cmake -GNinja -B build -S .
cmake --build build
