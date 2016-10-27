/*
Crea un playground que contenga los elementos para representar un velocimetro de un automovil. Recuerda que estamos practicando la programacion orientada a objetos y primero debes diseñar la clase, enumeraciones o estructuras para llevarlas a un aplicacion movil.
*/

import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init( ) {
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        print("\(velocidad.rawValue) km por hora, Apagado")
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        var velActual : Int
        var leyenda : String
        
        switch velocidad {
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
            leyenda = "Velocidad baja"
            break
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            leyenda = "Velocidad media"
            break
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            leyenda = "Velocidad alta"
            break
        case Velocidades.VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            leyenda = "Velocidad media"
            break
        default:
            velocidad = Velocidades.Apagado
            leyenda = "Apagado"
            break
        }
        
        velActual = velocidad.rawValue
        
        return (velActual, leyenda)
    }
}


var auto =   Auto( )

for i in 1...20 {
    var vel = auto.cambioDeVelocidad()
    print("\(vel.actual) km por hora, \(vel.velocidadEnCadena)")
}