@echo off
setlocal

reg delete HKCR\*\shell\edit_with_gvim /f

reg add HKCR\*\shell\edit_with_gvim
reg add HKCR\*\shell\edit_with_gvim /t REG_SZ /d "Edit with gvim" /f

set gvim_cmd="\"%~dp0gvim.cmd\" \"%%1\""
reg add HKCR\*\shell\edit_with_gvim\command
reg add HKCR\*\shell\edit_with_gvim\command /t REG_SZ /d %gvim_cmd% /f

