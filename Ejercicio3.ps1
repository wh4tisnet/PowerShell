$datos = Get-Content C:\Users\lliurex-admin\Desktop\usuarios.txt

$pass = Read-Host "Introduce una contraseña para los usuarios" -AsSecureString

foreach ($i in $datos){
    New-LocalUser $i -Password $pass
}