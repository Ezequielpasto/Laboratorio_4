# Menú interactivo
Write-Output "1 - Mostrar informacion del sistema"
Write-Output "2 - Gestionar procesos"
Write-Output "3 - Crear carpeta con fecha actual"
Write-Output "Ingresa una opcion: "

$numero = Read-Host

switch ($numero) {
    "1" { # Mostrar la información del sistema
        Get-ComputerInfo
    }
    "2" { # Mostrar todos los precesos
        Get-Process
    }
    "3" { # Crear una carpeta y que el nombre sea la fecha actual
        $fecha = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
        New-Item -ItemType Directory -Name $fecha
    }
    default {
        Write-Output "Numero incorrecto"
    }
}