@ECHO off
REM Author: Luis Rita - 6 Jul 2018
REM Run MACVENDOR API in cmd/powershell
REM This file allows the powershell script to be called with a command, without extension 
REM Please make sure Get-Vendor.ps1 is in the same folder
REM to be used when the folder containing them is added to system PATH environment variable. After that just run speedtest on cmd/powershell
powershell -Command "& {Get-Vendor.ps1 %1}"