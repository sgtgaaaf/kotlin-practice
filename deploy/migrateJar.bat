@echo off

REM Define source and destination paths
set "source_path=./target/kotlin-lib"
set "jar_path=./target/*.jar"
set "destination_path=./deploy/package/"

REM Check if the source directory exists
if not exist "%source_path%" (
  echo Source directory '%source_path%' does not exist.
  exit /b 1
)

REM Create the destination directory if it doesn't exist
mkdir "%destination_path%" 2>nul

REM Move the kotlin-lib folder to the destination directory
move "%source_path%" "%destination_path%" >nul
move "%jar_path%" "%destination_path%" >nul

REM Check if the move operation was successful
if %errorlevel% equ 0 (
  echo Successfully moved 'kotlin-lib' folder to '%destination_path%'.
) else (
  echo Failed to move 'kotlin-lib' folder.
)