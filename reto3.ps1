# Crear una carpeta y que el nombre sea la fecha actual
$fecha = Get-Date -Format "yyyy-MM-dd"
New-Item -ItemType Directory -Name $fecha