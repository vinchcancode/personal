# Step 1: Set Execution Policy to RemoteSigned (Force)
Set-ExecutionPolicy RemoteSigned -Force

# Step 2: Download the latest version of Visual Studio Code (VSCode)
Write-Host "Downloading latest version of Visual Studio Code..."
$VSCodeUrl = "https://update.code.visualstudio.com/latest/win32-x64-user/stable"
$VSCodeInstaller = "$env:TEMP\VSCodeSetup.exe"
Invoke-WebRequest -Uri $VSCodeUrl -OutFile $VSCodeInstaller
Write-Host "VSCode downloaded. Installing..."
Start-Process -FilePath $VSCodeInstaller -ArgumentList "/verysilent" -Wait
Write-Host "VSCode installation completed."

# Step 3: Download the latest version of GitHub Desktop
Write-Host "Downloading latest version of GitHub Desktop..."
$GitHubDesktopUrl = "https://central.github.com/deployments/desktop/desktop/latest/win32"  # GitHub Desktop installer link
$GitHubDesktopInstaller = "$env:TEMP\GitHubDesktopSetup.exe"
Invoke-WebRequest -Uri $GitHubDesktopUrl -OutFile $GitHubDesktopInstaller
Write-Host "GitHub Desktop downloaded. Installing..."
Start-Process -FilePath $GitHubDesktopInstaller -ArgumentList "/silent" -Wait
Write-Host "GitHub Desktop installation completed."

Write-Host "Installation of VSCode and GitHub Desktop completed successfully!"
