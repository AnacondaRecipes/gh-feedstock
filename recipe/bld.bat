@echo on

:: Change to directory with main.go
cd /d "%SRC_DIR%\cmd\gh"
if errorlevel 1 exit 1

:: Build
go build -v -o "%PKG_NAME%.exe" .
if errorlevel 1 exit 1

:: Install Binary into %SCRIPTS%
if not exist "%SCRIPTS%" mkdir "%SCRIPTS%"
if errorlevel 1 exit 1

move "%PKG_NAME%.exe" "%SCRIPTS%\%PKG_NAME%.exe"
if errorlevel 1 exit 1
