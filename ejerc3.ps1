$cuenta = 0
foreach ($fichero in Get-ChildItem *.txt) {
    $cuenta++
}

Write-Host "En total hay $cuenta ficheros terminados en txt."
