@echo off
setlocal

for %%D in ("%~dp0..\runtime") do set VIMRUNTIME=%%~fD
set VIM=%VIMRUNTIME%

set PATH=%~dp0..\bin;%PATH%
start gvim.exe %*

