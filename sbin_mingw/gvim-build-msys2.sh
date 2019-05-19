
# update system
pacman -Syu
pacman -Su

# install toolchain
pacboy -S base-devel: toolchain:m

# Python
python37_path='/C/Users/me/AppData/Local/Programs/Python/Python37'
make -f Make_ming.mak GUI=yes FEATURES=HUGE PYTHON3_VER=37 PYTHON3=$python37_path

# Built binary requires MinGW64 dlls to run
# Do this AFTER installation: 
cp C:\msys64\mingw64\bin\*dll C:\local\apps\gvim8\bin\
