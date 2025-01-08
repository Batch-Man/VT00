<<<<<<< HEAD
# VT100 Batch Library

## Overview
The **VT100 Batch Library** is a simple and efficient solution for incorporating VT100/ANSI escape codes into Windows batch files. It provides a collection of pre-defined variables representing common VT100 codes for text formatting, cursor control, and terminal color management. This library is ideal for enhancing the user interface of batch scripts.

## Features
- Simplified usage of VT100 escape codes in batch files.
- Pre-defined variables for text formatting, colors, and cursor control.
- Fully customizable and extensible.
- Lightweight and easy to integrate.

## Installation
1. Clone this repository or download the `VT100.bat` file.
2. Include the library in your batch script using:
   ```batch
   CALL VT100.bat

## Usage
Example
```batch
@ECHO OFF
CALL VT100.bat

ECHO %_RED%This is red text%_RESET%
ECHO %_Green%This is Green text%_RESET%
ECHO %_Negative%Negative Coloring on text%_RESET%

PAUSE
```

## List of Variables

Since there are many Variables defined in this library, so instead of listing everything here in the read me file which needs to be updated every time in future what I can suggest to the user is that they can run the following command in that terminal to see all the available variables in the particular version of VT100 library.

```batch
Call VT100.bat /?
```
www.batch-man.com
