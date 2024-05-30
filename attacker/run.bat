@echo off
setlocal

rem Set the path to the directory containing the .bin files
set "directory=evade1\"

rem Loop through each .bin file in the directory
for %%i in ("%directory%\*.bin") do (
    echo Processing: %%i
    rem Run the Python script on each .bin file
    python modify.py "%%i"
)

endlocal
