@echo off
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin
REM
set INTERVAL= 14400
timeout %INTERVAL%

sh run.sh

:Again  

sh run.sh

set /a i+=1

timeout %INTERVAL%
goto Again  