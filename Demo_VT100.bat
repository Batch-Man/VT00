@echo off
title Demo of VT100 Sequences

::Colors
::Red, Reset, Text Reset, Gray, Intensity, Underline, Highlight, Text Highlight, Italics

set red=[91m
set rst=[0m
set tRES=[39m
set gray=[48;5;240m  
set int=[1m
set und=[4m
set HL=[48;5;235m
set THL=[38;5;159m
set it=[3m
set dred=[48;5;88m
set dgrn=[48;5;22m
set top=#3
set bottom=#4
set s=#5
set d=#6
set curup=[1A
set curdown=[1B
set cursavepos=[s
set currestore=[u
Set BigText@t=%cursavepos%%top%t%currestore%%curdown%%bottom%t

for /l %%A in (1,1,10) do (Echo %%A)
echo %top%Test...
echo %bottom%Test...
Echo.
Echo. %BigText@t:t=big text%
Echo. %s%SIngle Width, Single Height 
Echo. %d% Double Width, Double Height
pause >nul
exit
echo.#3hello this is a %dgrn%upper part%rst% of a %red%huge text%rst%
echo.
echo.and this is a normal text
echo.
echo.#4hello this is a %dgrn%lower part%rst% of a %red%huge text%rst%
echo.
echo.#3hello this is a %red%glitch%rst% effect %dgrn%impossible is nothing%rst% 
echo.#4hello this is a %red%glitch%rst% effect %dgrn%nothing is impossible%rst% 
echo.
echo.
echo.#5hello this is a %red%single width line%rst% effect %dgrn%impossible is nothing%rst% 
echo.#6hello this is a %red%double width line%rst% effect %dgrn%impossible is nothing%rst% 
echo.
echo.#6#3hello this is a %dgrn%big fat extended%rst% %red%huge text%rst%
echo.#6#4hello this is a %dgrn%big fat extended%rst% %red%huge text%rst%
timeout /t 2 >nul 2>nul
for /l %%A in (1,1,5) do (
	echo.[5A
	timeout /t 1 >nul 2>nul
	)
	timeout /t 2 >nul 2>nul
for /l %%A in (1,1,5) do (
	echo.[5S
	timeout /t 1 >nul 2>nul
	)
	timeout /t 2 >nul 2>nul
for /l %%A in (1,1,5) do (
	echo.[5T
	timeout /t 1 >nul 2>nul
	)
	echo.[?3l
pause