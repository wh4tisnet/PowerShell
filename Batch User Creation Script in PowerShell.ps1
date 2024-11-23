$datos = Get-Content C:\Users\user\Desktop\users.txt

$pass = Read-Host "Introduce una contraseña para los usuarios" -AsSecureString

foreach ($i in $datos){
    New-LocalUser $i -Password $pass
}
