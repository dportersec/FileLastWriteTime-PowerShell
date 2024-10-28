# Get-FileLastWriteTime.ps1
param (
    [string]$directory,
    [string]$outputFile
)

Get-ChildItem -Path $directory -File | 
Sort-Object LastWriteTime | 
Select-Object FullName, LastWriteTime | 
Out-File -FilePath $outputFile
