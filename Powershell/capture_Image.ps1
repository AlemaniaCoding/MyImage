$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
Write-Host "Are you running as an administrator? -> " $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if(!$currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)){
    Write-Error "Bitte fuehre das Skript als Administrator aus."
    Exit
}

$imageName = Read-Host Wie willst deine WIM-Datei nennen 
$imagePath = Read-Host Wo soll das Image gespeichert werden 
$folderPath = Read-Host "Wo ist der Ordner, der zu " + $imageName + ".wim gemacht werden soll"

New-WindowsImage -Name $imageName -ImagePath $imagePath -CapturePath $folderPath