$nombre = Read-Host "Introduce el nombre del usuario"
$apellido = Read-Host "Introduce el apellido del usuario"
$contra = Read-Host "Introduce la contraseña" -AsSecureString

$nombreUsuario = "$nombre.$apellido"

New-LocalUser -Name $nombreUsuario -Password $password

Write-Host "Usuario $nombreUsuario creado correctamente."