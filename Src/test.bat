@echo off
setlocal enabledelayedexpansion

:: Send a VT100 cursor position request escape sequence
echo.[6n >a.txt

:: Capture the response from the console
for /f "tokens=*" %%a in ('echo.[6n') do (
    Set cursor_position=%%a
	)
::Set cursor_position=!cursor_position:~3!
Title Current Cursor Position: !cursor_position!
For /f "tokens=1,2,* delims=;" %%A in ("!cursor_position!") do (Set cursor_X=%%A&Set cursor_Y=%%B)

echo %cursor_position%

:: Display the cursor position
echo Current Cursor Position: !cursor_X!, !cursor_X!
echo Current Cursor Position: !cursor_position!

endlocal
