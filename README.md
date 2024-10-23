# FileLastWriteTime PowerShell Script

## Overview
This PowerShell script retrieves and sorts the last write times of files within a specified directory. It is useful for tracking file changes, which can be relevant in system audits or forensic investigations.

## Project Purpose
This script demonstrates how to retrieve and sort file metadata using PowerShell. It can be useful in system audits or incident response to track file modifications across directories.

## Features
- Retrieve the full path and last write time of files in a specified directory.
- Sort files by their last write time in ascending order.

## Usage
1. Clone the repository.
2. Run the script using PowerShell:
   ```powershell
   .\Get-FileLastWriteTime.ps1 -directory "C:\YourDirectory"


![FileLastWriteTime Example Output](https://github.com/user-attachments/assets/18c2d6a1-90a3-473c-a952-09fbbd6eeda7)


## PowerShell Script

```powershell
# Get-FileLastWriteTime.ps1

param (
    [string]$directory
)

Get-ChildItem -Path $directory -File | Sort-Object LastWriteTime | Select-Object FullName, LastWriteTime

