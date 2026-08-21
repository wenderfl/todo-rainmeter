param (
    [string]$VarName = "AppFontColor"
)

Add-Type -AssemblyName System.Windows.Forms

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$varFile = Join-Path $scriptDir "Variables.inc"

# Read current color if possible
$defaultColor = [System.Drawing.Color]::White
if (Test-Path $varFile) {
    $content = Get-Content $varFile -Encoding Unicode
    foreach ($line in $content) {
        if ($line -match "^$VarName\s*=\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)") {
            $r = [int]$matches[1]
            $g = [int]$matches[2]
            $b = [int]$matches[3]
            $defaultColor = [System.Drawing.Color]::FromArgb($r, $g, $b)
            break
        }
    }
}

$dialog = New-Object System.Windows.Forms.ColorDialog
$dialog.FullOpen = $true
$dialog.Color = $defaultColor

$result = $dialog.ShowDialog()
if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
    $r = $dialog.Color.R
    $g = $dialog.Color.G
    $b = $dialog.Color.B
    $newRgb = "$r,$g,$b"

    if (Test-Path $varFile) {
        $lines = Get-Content $varFile -Encoding Unicode
        $newLines = @()
        $found = $false
        foreach ($line in $lines) {
            if ($line -match "^$VarName\s*=") {
                $newLines += "$VarName=$newRgb"
                $found = $true
            } else {
                $newLines += $line
            }
        }
        if (-not $found) {
            $newLines += "$VarName=$newRgb"
        }
        $newLines | Set-Content $varFile -Encoding Unicode
    }

    # Find Rainmeter executable and send refresh bangs
    $rm = Get-Process "Rainmeter" -ErrorAction SilentlyContinue
    if ($rm) {
        $rmPath = $rm.Path
        if ($rmPath) {
            Start-Process -FilePath $rmPath -ArgumentList "!CommandMeasure MeasureDynamicTasks Update rainmeter-todo-list\todo" -WindowStyle Hidden
            Start-Sleep -Milliseconds 50
            Start-Process -FilePath $rmPath -ArgumentList "!RefreshGroup ToDoList" -WindowStyle Hidden
        }
    }
}
