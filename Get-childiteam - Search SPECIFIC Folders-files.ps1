cls
$drives = "C:\test\TestPowershellScripts","C:\temp"

foreach ($a in $drives) {
Write-Host("***********Folder path - $a*****************")
Get-ChildItem -Path $a -Recurse -Filter *.ps1| select FullName | fl

}
