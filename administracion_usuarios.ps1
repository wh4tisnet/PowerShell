do {
    Write-Host "Selecciona una opción:"
    Write-Host "1. Crear usuarios"
    Write-Host "2. Borrar usuarios"
    Write-Host "3. Salir del script"
    $opcion = Read-Host "Opción"

    switch ($opcion) {
        '1' {
            $nombreUsuario = Read-Host "Introduce el nombre del usuario a crear"
            $contraseña = Read-Host "Introduce la contraseña" -AsSecureString
            try {
                New-LocalUser -Name $nombreUsuario -Password $contraseña -PasswordNeverExpires -UserMayNotChangePassword
                Write-Host "Usuario creado: $nombreUsuario"
            } catch {
                Write-Host "Error al crear el usuario: $_"
            }
        }
        '2' {
            $usuarios = Get-LocalUser | Select-Object -ExpandProperty Name
            if ($usuarios.Count -eq 0) {
                Write-Host "No hay usuarios locales disponibles para borrar."
            } else {
                Write-Host "Usuarios disponibles para borrar:"
                $index = 1
                foreach ($usuario in $usuarios) {
                    Write-Host "$index. $usuario"
                    $index++
                }
                $seleccion = Read-Host "Introduce el número del usuario a borrar"
                if ($seleccion -ge 1 -and $seleccion -le $usuarios.Count) {
                    $usuarioSeleccionado = $usuarios[$seleccion - 1]
                    try {
                        Remove-LocalUser -Name $usuarioSeleccionado
                        Write-Host "Usuario borrado: $usuarioSeleccionado"
                    } catch {
                        Write-Host "Error al borrar el usuario: $_"
                    }
                } else {
                    Write-Host "Selección no válida."
                }
            }
        }
        '3' {
            break
        }
    }
} while ($opcion -ne '3')
