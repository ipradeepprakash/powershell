#-- Powershell script :list of server status sent to text files
#-- change list of servers, status on: failures, success also location accordingly
#-----------------------------------------------------------------
$servers = Get-Content G:\DBAInstalls\testservers.txt

foreach ($server in $servers) {

try{
Test-Connection -ComputerName $server -Count 1 -ErrorAction Stop
Add-Content -Path G:\DBAInstalls\successful.txt -value "$server --> CONNECTION is OK "
}

catch {
Add-Content -Path G:\DBAInstalls\errors.txt -value "$($_.exception.message) "

}

}
