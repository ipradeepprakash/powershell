cls
 Get-EventLog -LogName System -After '2023-03-06' -Newest 40 | 
 where-Object EntryType -eq Warning |
 ConvertTo-Html | Out-File -FilePath 'c:\sample.html'
  
  C:\sample.html
