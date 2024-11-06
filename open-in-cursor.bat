$cursorPath = "$env:LOCALAPPDATA\Programs\cursor\Cursor.exe"

# Add "Open in Cursor" option
New-Item -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursor" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursor" -Name "(Default)" -Value "Open in Cursor"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursor" -Name "Icon" -Value $cursorPath
New-Item -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursor\command" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursor\command" -Name "(Default)" -Value "`"$cursorPath`" `"%1`""

# Add "Open in Cursor (as administrator)" option
New-Item -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursorAdmin" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursorAdmin" -Name "(Default)" -Value "Open in Cursor (as administrator)"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursorAdmin" -Name "Icon" -Value $cursorPath
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursorAdmin" -Name "HasLUAShield" -Value ""
New-Item -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursorAdmin\command" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Classes\Directory\shell\OpenWithCursorAdmin\command" -Name "(Default)" -Value "powershell.exe -WindowStyle Hidden -Command `"Start-Process '$cursorPath' -ArgumentList '\`"%1\`"' -Verb RunAs`""