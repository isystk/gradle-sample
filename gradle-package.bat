@echo off

set PJT_HOME=%~dp0\..
set JAVA_HOME=%PJT_HOME%\tools\java\11
set GRADLE_HOME=%PJT_HOME%\tools\gradle

set PATH=%JAVA_HOME%\bin;%PATH%
set PATH=%GRADLE_HOME%\bin;%PATH%

call cd %~dp0
call gradle --daemon war :batch:jar

pause