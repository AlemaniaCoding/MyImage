$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
Write-Host "Are you running as an administrator? -> " $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if(!$currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)){
    Write-Error "Bitte fuehre das Skript als Administrator aus."
    Exit
}

Write-Host Wo befindet sich die WIM-Datei?
$imagePath = Read-Host Pfad zur WIM-Datei 

Write-Host "Perfekt! ^-^"

Write-Host Wo soll das Image entpackt werden?
$applyPath = Read-Host Pfad, wo es entpackt werden soll 

Expand-WindowsImage -ImagePath $imagePath -ApplyPath $applyPath -Index 1