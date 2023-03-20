cls
$a = Get-PSDrive -PSProvider FileSystem |Where-Object {$_.Name -ne 'c'}| Select-Object -ExpandProperty root
$a
Get-ChildItem -Path $a -Recurse | Group-Object Extension | ft -AutoSize
 