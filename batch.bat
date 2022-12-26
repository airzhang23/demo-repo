@REM Learn and practice batch shell scripting
@REM Alway make comment

@echo off
set /A "index = 1"
set /A "count = 5"
:while
if %index% leq %count% (
   echo The value of index is %index%
   set /A "index = index + 1"
   goto :while
)

if exist C:\path\myfile.txt echo "File exists" 
if exist C:\path\myfile2.txt (echo "File exists") else (echo "File does not exist")

set /A a=5 
set /A b=10 
set /A c=%a% + %b% 
if %c%==15 echo "The value of variable c is 15" 
if not %c%==10 (
    echo "The value of variable c is not 10"
)


set /A a=5 
set /A b=10
set /A c=%a% + %b% 
if %c%==15 (echo "The value of variable c is 15") else (echo "Unknown value") 
if %c%==10 (echo "The value of variable c is 10") else (echo "Unknown value")

echo ------

set /A a=5 

if %a%==5 goto :labela 
if %a%==10 goto :labelb

:labela 
echo "The value of a is 5" 

exit /b 0

:labelb 
echo "The value of a is 10"