
:: Requirements: Visual Studio 2012, Windows 7 SDK, Python3.5(32-bit)

set python3_path="C:\Users\yangyd\AppData\Local\Programs\Python\Python35-32"
set python3_version=35

set INCLUDE=%INCLUDE%;C:\Program Files\Microsoft SDKs\Windows\v7.1\Include
nmake -f Make_mvc.mak ^
  FEATURES=HUGE GUI=yes DIRECTX=yes OLE=yes MBYTE=yes IME=yes DYNAMIC_IME=yes GIME=yes ^
  PYTHON3=%python3_path% DYNAMIC_PYTHON3=yes PYTHON3_VER=%python3_version% ^
  CSCOPE=yes ICONV=yes GETTEXT=yes CHANNEL=yes CPUNR=i686 WINVER=0x0601

