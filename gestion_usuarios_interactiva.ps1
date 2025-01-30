do {
    Write-Host "Opciónes: "
    Write-Host "1. Nuevo Usuario"
    Write-Host "2. Borrar Usuario"
    Write-Host "3. Salir"
    $operacion = Read-Host "Que operacion deseas realizar: "

    if ($operacion -eq 1) {
        $nombre = Read-Host "Introduzca el nombre del usuario"
        $apellido = Read-Host "Introduce el apellido"
        $contra = Read-Host "Introduce una contraseña" -AsSecureString
    
        $user = $nombre + $apellido
        New-LocalUser -Name $user -Password $contra
        Write-Host "El usuario $user a sido creado con exito"
    }

    elseif ($operacion -eq 2){
        $usuario = Get-LocalUser
        Write-Host "Usuarios: "
        for ($i = 0; $i -lt $usuario.Count; $i++){
            Write-Host "$($i+1). $($usuario[$i].Name)"
        }
        $numero_user = Read-Host "Ingresa el numero del usuario a borrar"
        $nombre_user = $usuario[$numero_user-1].Name
        Remove-LocalUser -Name $nombre_user
        Write-Host "El usuario $nombrer_user a sido elim inado correctamente"
    }

    elseif ($operacion -eq 3){
        Write-Host "Salir del programa :)"
        exit 0
    }

} While ($true)
