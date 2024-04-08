# Check if winget is installed. If not, provide instructions to manually install.
if (!(Get-Command winget -ErrorAction SilentlyContinue)) {
    Write-Host "winget not found. Please install winget manually. See https://aka.ms/getwinget"
    Exit
}

# Array of packages to install
$packagesToInstall = @(
    "Git.Git"
    "GitHub.GitHubDesktop"
    "Notepad++.Notepad++" 
    "Neovim.Neovim"
    "Helix.Helix"  
    "Microsoft.VisualStudioCode"
    "VideoLAN.VLC"
    "7zip.7zip"
    "Microsoft.PowerToys"
    "Figma.Figma"
    "Oven-sh.Bun"
    "OpenJS.NodeJS"
    "Yarn.Yarn"
)

# Display packages to install
Write-Host "$($packagesToInstall.Count) packages to install"
foreach ($package in $packagestoInstall) {
    Write-Host "- $package"
}

Write-Host ""

# Install each package
for ($i = 0; $i -lt $packagesToInstall.Count; $i++) {
    $package = $packagesToInstall[$i]
    $packageNumber = $i + 1
    Write-Host "$packageNumber/$($packagesToInstall.Count) Installing $package..."
    winget install --id $package -e --silent
}

Write-Host ""
Write-Host "Installation complete! Press any key to continue..."
Read-Host 
