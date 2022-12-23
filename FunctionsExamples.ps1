#function - to check if employee Age is Major or Minor

function empinfo($name,$age) 

{
if ($age -gt 18){

Write-Host "Employee $name is ADULT"
#Write-Host "Emp Name - $name and his age - $age"
}
elseif ($age -le 18) {

Write-Host "Employee $name is Minor"
}
}

