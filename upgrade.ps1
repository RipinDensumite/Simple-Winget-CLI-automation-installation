# Check if winget is installed. If not, provide instructions to manually install.
if (!(Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "winget not found. Please install winget manually. See https://aka.ms/getwinget"
    Exit
}

# Upgrade package
winget upgrade --all --accept-package-agreements --accept-source-agreements

Write-Host ""
Write-Host "Upgrade complete! Press any key to continue..."
Read-Host 
