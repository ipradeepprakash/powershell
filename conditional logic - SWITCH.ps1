#Switch statement with user's input

Write-host "Welcome, what task info you need?"
Write-Host "1. Check - System Name"
Write-Host "2. Check - Stopped Services"
Write-Host "3. Check - Drive space"
$a = Read-Host ("Enter your Choice")
switch($a){

1   {

    write-host ("System name - ") Hostname

    }

2   {
        write-host ("LIST OF Hyper SERVICES in Stopped status  - ") 
        get-service | Where-Object {$_.displayname -like 'Hyper**'}
    }

3   {
         write-host ("DRIVE SPACES - ") 
         Get-Volume
    }


}