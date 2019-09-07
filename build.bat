@ECHO OFF

set MATLAB_BASE=C:\Program Files\MATLAB
set MATLAB_VER=R2018b

echo "Build Environment:"
set

cd "%~dp0"
:: -batch command added in R2019a.
call "%MATLAB_BASE%\%MATLAB_VER%\bin\matlab.exe" -wait -sd "%~dp0" -logfile "%~dp0\output.log" -r "cd('%~dp0');exit;"
