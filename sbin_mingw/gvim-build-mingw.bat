@echo off

cd %~dp0..\src

for %%a in (%*) do (
  if /I "%%a"=="/clean" set ARG_CLEAN=Y
)
if X_%ARG_CLEAN%=X_Y (
  goto clean
) else (
  goto build
)

:clean
mingw32-make -f Make_ming.mak clean
goto done

:build
mingw32-make -f Make_ming.mak GUI=yes FEATURES=HUGE ^
  ARCH=x86-64 IME=yes DYNAMIC_IME=yes OLE=yes ^
  WINVER=0x0601 STATIC_STDCPLUS=yes CSCOPE=yes ^
  PYTHON="C:/Python27" DYNAMIC_PYTHON=yes PYTHON_VER=27

:done

