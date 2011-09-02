:: Copyright (C) 2007-2009, Sumisho Computer Systems Corp. All Rights Reserved.
::
:: An OpenCurl project.

:: Licensed under the Apache License, Version 2.0 (the "License");
:: you may not use this file except in compliance with the License.
:: You may obtain a copy of the License at
:: 
::     http://www.apache.org/licenses/LICENSE-2.0
:: 
:: Unless required by applicable law or agreed to in writing, software
:: distributed under the License is distributed on an "AS IS" BASIS,
:: WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
:: See the License for the specific language governing permissions and
:: limitations under the License.

:: ------------------------------
:: NOTE: move this above svn workspaces
:: - avoids bad interaction between TortoiseSVN and deploy-project
:: ------------------------------

REM @echo off

:: define workspace
:: ------------------------------
set WORKSPACE=CDK\trunk

:: define release tag
:: ------------------------------
set TAG=090701
set WORK=__WORK_%TAG%

:: define command shortcuts
:: ------------------------------
set CURL-EXE="c:\Program Files\Curl Corporation\Surge\8\bin\curl.exe"
set CURL-EXE6="c:\Program Files\Curl Corporation\Surge\7\bin\curl.exe"
set JUMP-IF-ERROR=IF ERRORLEVEL 1 (GOTO :ERROR)

:: fresh copy of source tree
:: ------------------------------
echo == fresh copy for each version
rd /s /q %WORK%
md %WORK%
svn export %WORKSPACE%\CURL-UTIL %WORK%\CURL-UTIL
move %WORK%\CURL-UTIL %WORK%\CURL-UTIL-V6
svn export %WORKSPACE%\CURL-UTIL %WORK%\CURL-UTIL
move %WORK%\CURL-UTIL %WORK%\CURL-UTIL-V7
cd %WORK%
%JUMP-IF-ERROR% ELSE echo == done.

:: batch deploy CURL-UTIL-V7
:: ------------------------------
echo == deploy CURL-UTIL-V7
%CURL-EXE% CURL-UTIL-V7\build\deploy-batch.xcurl
%JUMP-IF-ERROR% ELSE echo == done.

:: batch deploy CURL-UTIL-V6
:: ------------------------------
echo == deploy CURL-UTIL-V6
%CURL-EXE6% CURL-UTIL-V6\build\become-v6.xcurl
%CURL-EXE6% CURL-UTIL-V6\build\deploy-batch.xcurl
%JUMP-IF-ERROR% ELSE echo == done.

:: distribution directories
:: ------------------------------
move CURL-UTIL-V6\build\DEPLOYED CURL-UTIL-V6_%TAG%
move CURL-UTIL-V7\build\DEPLOYED CURL-UTIL-V7_%TAG%

:: done
:: ------------------------------
cd ..
echo deployed.
pause
goto :EOF

:ERROR
echo deploy failed.
pause

:EOF
