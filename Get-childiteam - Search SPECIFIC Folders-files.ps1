cls

$drives = "G:","F:","E:","i:"
foreach ($a in $drives) {
Write-Host "*************Folder path - $a **************"
Get-ChildItem -Path $a -Recurse -Filter *.ldf | Select-Object -ExpandProperty FullName 

Write-Host " "
}
