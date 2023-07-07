@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Step 1: Find all .tex files in the current directory
for %%F in (*.tex) do (

    REM Get the filename without the extension
    set "filename=%%~nF"

    REM Compile LaTeX file to DVI using lualatex
    lualatex --output-format=dvi "!filename!.tex"

    REM Check if lualatex succeeded
    if errorlevel 1 (
        echo lualatex failed to compile the file !filename!.tex.
        pause
        exit /b 1
    )

    REM Check if dvisvgm is installed
    where /q dvisvgm
    if errorlevel 1 (
        echo dvisvgm is not installed. Please install a TeX distribution like MiKTeX or TeX Live and rerun the script.
        pause
        exit /b 1
    )

    REM Convert DVI to SVG
    dvisvgm --no-fonts "!filename!.dvi"
    REM  For retaining fonts use the command bellow and comment-out the above
    REM  dvisvgm --font-format=woff --exact "!filename!.dvi"

    REM Check if dvisvgm succeeded
    if errorlevel 1 (
        echo dvisvgm failed to convert the DVI to SVG.
        pause
        exit /b 1
    )

    echo Conversion to SVG completed successfully. Output file: !filename!.svg

    REM Delete all output files except for .dvi, .svg, and .tex
    for %%i in (!filename!*.*) do (
        if not "%%~xi"==".dvi" (
            if not "%%~xi"==".svg" (
                if not "%%~xi"==".tex" (
                    del "%%i"
                )
            )
        )
    )

)
pause
