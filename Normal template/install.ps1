﻿$PackageName = "Normal-template"

$Path_4netIntune = "$Env:Programfiles\4net\EndpointManager"
Start-Transcript -Path "$Path_4netIntune\Log\$PackageName-$env:USERNAME-install.log" -Force

try{
New-Item -Path "$env:APPDATA\Microsoft\Templates" -ItemType "Directory" -Force
Copy-Item 'Normal.dotm' -Destination "$env:APPDATA\Microsoft\Templates\" -Recurse -Force
New-Item -Path "$env:localAPPDATA\4net\EndpointManager\Validation\$PackageName" -ItemType "file" -Force -Value 1
}catch{
    Write-Host "_____________________________________________________________________"
    Write-Host "FEHLER"
    Write-Host "$_"
    Write-Host "_____________________________________________________________________"
}

Stop-Transcript