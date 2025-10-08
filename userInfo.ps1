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

# Email settings
$smtpServer = "smtp.gmail.com"
$smtpPort = 587
$from = "taylorsg599@gmail.com"
$to = "taylorsg599@gmail.com"
$subject = "Email from PowerShell"
#$body = "This is a test email sent using Gmail and PowerShell."

$body = @"
Name: $name
Age: $age
Year of Birth: $yearOfBirth
Pet's Name: $petName
"@

# Gmail App Password
$appPassword = "xxxx xxxx xxxx xxxx"

# Convert password to secure string
$securePassword = ConvertTo-SecureString $appPassword -AsPlainText -Force
$credentials = New-Object System.Management.Automation.PSCredential($from, $securePassword)

# Send the email
Send-MailMessage -From $from -To $to -Subject $subject -Body $body -SmtpServer $smtpServer -Port $smtpPort -UseSsl -Credential $credentials
