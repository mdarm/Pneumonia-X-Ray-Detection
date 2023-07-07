#!/bin/bash

# Step 1: Find all .tex files in the current directory
for file in *.tex
do
    # Get the filename without the extension
    filename="${file%.*}"

    # Compile LaTeX file to DVI using lualatex
    lualatex --output-format=dvi "${filename}.tex"

    # Check if lualatex succeeded
    if [ $? -ne 0 ]; then
        echo "lualatex failed to compile the file ${filename}.tex."
        exit 1
    fi

    # Check if dvisvgm is installed
    command -v dvisvgm >/dev/null 2>&1 || {
        echo "dvisvgm is not installed. Please install a TeX distribution like MiKTeX or TeX Live and rerun the script."
        exit 1
    }

    # Convert DVI to SVG
    dvisvgm --no-fonts "${filename}.dvi"
    #  For retaining fonts use the command below and comment-out the above
    #  dvisvgm --font-format=woff --exact "${filename}.dvi"

    # Check if dvisvgm succeeded
    if [ $? -ne 0 ]; then
        echo "dvisvgm failed to convert the DVI to SVG."
        exit 1
    fi

    echo "Conversion to SVG completed successfully. Output file: ${filename}.svg"

    # Delete all output files except for .dvi, .svg, and .tex
    for i in ${filename}.*
    do
        if [[ "${i}" != "${filename}.dvi" && "${i}" != "${filename}.svg" && "${i}" != "${filename}.tex" ]]
        then
            rm "${i}"
        fi
    done
done

read -p "Press enter to continue"
