    If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator"))
    {Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
    Exit}
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + " (Administrator)"
    $Host.UI.RawUI.BackgroundColor = "Black"
	$Host.PrivateData.ProgressBackgroundColor = "Black"
    $Host.PrivateData.ProgressForegroundColor = "White"
    Clear-Host

# open amdcontrolpanel
Start-Process "C:\Program Files\AMD\CNext\CNext\RadeonSoftware.exe"
Write-Host "AMD settings:"
Write-Host "Unlisted settings are not important."
Write-Host ""
Write-Host "-In Game Overlay (off)"
Write-Host "-Check For Updates (manual)"
Write-Host "-Issue Detection (off)"
Write-Host ""
Write-Host "-AMD FreeSync (off)"
Write-Host "-Virtual Super Resolution (off)"
Write-Host "-GPU Scaling (off)"
Write-Host "-Integer Scaling (off)"
Write-Host ""
Write-Host "Avoid capping FPS in AMD drivers to prevent input lag."
Write-Host "Use an in-game or MSI Afterburner FPS cap."
Write-Host ""
Write-Host "-Radeon Super Resolution (off)"
Write-Host "-Radeon Anti-Lag (off buggy)"
Write-Host "-Radeon Chill (off)"
Write-Host "-Radeon Enhanced Sync (off)"
Write-Host "-Wait for Vertical Refresh (off)"
Write-Host "-Frame rate target control (off)"
Write-Host "-Morphological Anti-Aliasing (off)"
Write-Host "-Ansiotropic Filtering (off)"
Write-Host "-Texture Filtering Quality (performance)"
Write-Host "-Surface Format Optimization (on)"
Write-Host "-Tessellation Mode (override application settings)"
Write-Host "-Maximum Tessellation Level (off)"
Write-Host "-OpenGL Triple Buffering (off)"
Write-Host "-10-Bit Pixel Format (off)"
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")