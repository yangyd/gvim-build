@echo off

cd %~dp0..
rmdir /s/q bin
mkdir bin
move src\*.exe bin\
move src\xxd\*.exe bin\
move src\tee\*.exe bin\
