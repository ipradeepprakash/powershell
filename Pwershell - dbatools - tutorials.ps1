
# get database list info on instance
        Get-DbaDatabase -SqlInstance laptop-57fe7irr | ft -AutoSize -Wrap

# get DB processes that are not system SPIDS
        Get-DbaProcess -SqlInstance laptop-57fe7irr -ExcludeSystemSpids | Out-Gridview

# check Maxdop value
        Get-DbaSpConfigure -SqlInstance localhost -ConfigName MaxDegreeOfParallelism | SELECT ConfiguredValue, RunningValue

# test diskspeed for database
        Test-DBADiskSpeed -SQlInstance laptop-57fe7irr -Database tempdb | Out-Gridview

# install Brentozar scripts
        Install-DbaFirstResponderKit -SqlInstance laptop-57fe7irr

# get list of modules that are installed
        Get-InstalledModule | Select-Object name,installedDate,version,type | ft -AutoSize -Wrap

# check IO Latency details
        Get-DbaIoLatency -SqlInstance laptop-57fe7irr | Out-GridView

#Writes the output to a file.
        Get-DbaIoLatency SQLServerInstance1 | Select-Object * | Out-File C:\DBATools\IOLatency.txt

# get logins on instance
        Get-DbaLogin -SqlInstance laptop-57fe7irr | Out-GridView

# export logins of instance
        Export-DbaLogin -SqlInstance laptop-57fe7irr -Path 'C:\DBATools\'

        Export-DbaInstance -SqlInstance laptop-57fe7irr -Path C:\DBATools\


# Invoke-Item C:\DBATools\
Test-DbaConnection -SqlInstance laptop-57fe7irr


# backup database
Backup-DbaDatabase -SqlInstance 'ServerInstance' -Database 'YourDatabase' -BackupDirectory 'C:\Backup'

# SQL server: Health check
Get-DbaLastGoodCheckDb -SqlInstance 'YourServer'

# SQL server inventory
Get-DbaDatabase -SqlInstance 'YourServer'

# query SQL server instance
Get-DbaSqlInstance -SqlInstance 'ServerInstance'

# get list of databases
Get-DbaDatabase -SqlInstance localhost | ft -AutoSize -Wrap

# Logspace used by Databases
Get-DbaDbLogSpace -SqlInstance localhost | ft












