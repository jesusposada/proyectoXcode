/*
Programa un playground que evalúe un rango de números en base a 4 reglas de impresión.

Generar un rango de 0 a 100, incluye el número 100 en el rango.
Tienes que iterar el rango completo, utilizando la sentencia for para obtener cada número del rango y aplicar las siguientes reglas de impresión.
Al evaluar cada número debes aplicar las siguientes reglas:
- Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”

- Si el número es par, imprime: # el número + “par!!!”

- Si el número es impar, imprime: # el número + “impar!!!”

- Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”

Debes de usar la interpolación de variables para realizar la impresión de cada número.
*/

import UIKit

var texto: String

for var i = 0; i <= 100; i++ {
    texto = ""
    
    switch i {
    case 30...40:
        texto = "\tViva Swift!!!"
    default:
        if i % 5 == 0 {
            texto = "\tBingo!!!"
        } else if i % 2 == 0 {
            texto = "\tPar!!!"
        } else {
            texto = "\tImpar!!!"
        }
    }
    
    print("\(i)\(texto)\n")
}