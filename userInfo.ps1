# userInfo.ps1
# Ask for user inputs
$name = Read-Host "Enter your name"
$age = Read-Host "Enter your age"
$yearOfBirth = Read-Host "Enter your year of birth"
$petName = Read-Host "Enter your pet's name"

# Display collected information
Write-Host "`nCollected Information:"
Write-Host "-----------------------"
Write-Host "Name: $name"
Write-Host "Age: $age"
Write-Host "Year of Birth: $yearOfBirth"
Write-Host "Pet's Name: $petName"
Write-Host "-----------------------`n"
