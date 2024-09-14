Write-Host "Opciones: "
Write-Host "1. Sumar"
Write-Host "2. Restar"
Write-Host "3. Multiplicar"
Write-Host "4. Dividir"
Write-Host "5. Finalizar el programa"
$operation = Read-Host "Introduce la operacion: "
switch ($operation) {
    1 {
        Write-Host "Suma"
        $num1 = [float] (Read-Host "Introduce el primer numero: ")
        $num2 = [float] (Read-Host "Introduce el segundo numero: ")
        $suma = $num1 + $num2
        $suma
    }
    2 {
        Write-Host "Resta"
        $num1 = [float] (Read-Host "Introduce el primer numero: ")
        $num2 = [float] (Read-Host "Introduce el segundo numero: ")
        $rest = $num1 - $num2
        $rest
    }
    3 {
        Write-Host "Multiplicacion"
        $num1 = [float] (Read-Host "Introduce el primer numero: ")
        $num2 = [float] (Read-Host "Introduce el segundo numero: ")
        $mult = $num1 * $num2
        $mult
    }
    4 {
        Write-Host "Division"
        $num1 = [float] (Read-Host "Introduce el primer numero: ")
        $num2 = [float] (Read-Host "Introduce el segundo numero: ")
        $div = $num1 / $num2
        $div
    }
    5 {
        #Finalizar el programa :)
        break
    }
}