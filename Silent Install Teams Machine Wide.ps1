# Silent Install Teams Machine Wide 
# 

# Path for the workdir
$workdir = "c:\installer\Microsoft\Teams"

# Check if work directory exists if not create it

If (Test-Path -Path $workdir -PathType Container)
{ Write-Host "$workdir already exists" -ForegroundColor Red}
ELSE
{ New-Item -Path $workdir  -ItemType directory }

# Download the installer

$source = "https://docsolmspapps.blob.core.windows.net/general/Teams_windows_x64.msi"
$destination = "$workdir\Kyronn.exe"

# Check if Invoke-Webrequest exists otherwise execute WebClient

if (Get-Command 'Invoke-Webrequest')
{
     Invoke-WebRequest $source -OutFile $destination
}
else
{
    $WebClient = New-Object System.Net.WebClient
    $webclient.DownloadFile($source, $destination)
}

Start-Sleep 20
# Start the installation

Start-Process -FilePath "$workdir\Teams_windows_x64.msi"