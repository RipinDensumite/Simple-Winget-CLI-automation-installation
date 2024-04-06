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
)

# Install each package
foreach ($package in $packagesToInstall) {
    Write-Host "Installing $package..."
    winget install --id $package -e --silent
}

Write-Host "Installation complete!"

Write-Host "Press any key to continue..."
Read-Host 