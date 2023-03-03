cls
Get-Volume | Select-Object DriveLetter, 
@{Name='SizeGB';Expression={[math]::Round($_.size / 1GB, 2)}}, 
@{Name='FreeSpaceGB';Expression={[math]::Round($_.sizeremaining / 1GB, 2)}}
