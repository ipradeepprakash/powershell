#Automation: Check Server status of several servers via powershell script
#**************************************************************

$serverlist = Get-Content ('C:\testservers.txt')

foreach ($a in $serverlist) {
$b = Test-Connection -ComputerName $a -Quiet -Count 1 -ErrorAction SilentlyContinue


if($b) {

Write-Host ($a + "------>: is ONLINE")
}

else {
Write-Host($a + "------>: is NOT REACHABLE")

}

}
