# Installs the DESORA fiverr-advisor agent for Claude Code on Windows, globally (all projects).
# Usage (PowerShell): powershell -ExecutionPolicy Bypass -File install.ps1
$ErrorActionPreference = "Stop"
$Src  = Split-Path -Parent $MyInvocation.MyCommand.Path
$Dest = Join-Path $HOME ".claude"
New-Item -ItemType Directory -Force -Path (Join-Path $Dest "agents") | Out-Null
Copy-Item (Join-Path $Src ".claude\agents\fiverr-advisor.md") (Join-Path $Dest "agents\fiverr-advisor.md") -Force
$Kb = Join-Path $Dest "fiverr-knowledge"
$State = Join-Path $Kb "desora-state.md"
$Backup = $null
if (Test-Path $State) { $Backup = Get-Content $State -Raw }
if (Test-Path $Kb) { Remove-Item $Kb -Recurse -Force }
Copy-Item (Join-Path $Src ".claude\fiverr-knowledge") $Kb -Recurse
if ($Backup) { Set-Content -Path $State -Value $Backup -NoNewline }
Write-Host "Installed: $Dest\agents\fiverr-advisor.md"
Write-Host "Knowledge: $Kb"
Write-Host "Restart Claude Code, then type /agents to see fiverr-advisor."
