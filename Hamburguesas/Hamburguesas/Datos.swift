import Foundation
import UIKit


class ColeccionDePaises {
    let paises : [String] = ["Mexico", "Brazil", "Argentina", "Uruguay", "Chile",
        "España", "Alemania", "Holanda", "Francia", "Inglaterra",
        "China", "Japon", "Corea del Sur", "Arabia Saudita", "India",
        "Nigeria", "Egipto", "Sudafrica", "Camerun", "Tunez"]
    
    
    func obtenPais() -> String {
        let posicion = Int( arc4random() ) % paises.count
        
        return paises[posicion]
    }
}

class ColeccionDeHamburguesa {
    let hamburguesas : [String] = ["Hamburguesa Sencilla", "Hamburguesa doble carne", "Hamburguesa pollo", "Hamburguesa vegetariana", "Hamburguesa a la parrilla",
        "Hamburguesa de la casa", "Hamburguesa con doble queso", "Hamburguesa con arrachera", "Hamburguesa con pescado", "Hamburguesa cubana",
        "Hamburguesa light", "Hamburguesa con tocino", "Hamburguesa con camaron", "Hamburguesa con salsa bbq", "Hamburguesa al carbon",
        "Hamburguesa gigante", "Hamburguesa jamon y tocino", "Hamburguesa", "Hamburguesa doble", "Hamburguesa con papas"]
    
    func obtenHamburguesa() -> String {
        let posicion = Int( arc4random() ) % hamburguesas.count
        
        return hamburguesas[posicion]
    }
}

class ColeccionDeColores {
    let colores = [UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1),
        UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1),
        UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1),
        UIColor(red: 255/255, green: 255/255, blue: 0/255, alpha: 1),
        UIColor(red: 255/255, green: 0/255, blue: 255/255, alpha: 1),
        UIColor(red: 0/255, green: 255/255, blue: 255/255, alpha: 1)]
    
    func obtencionColor() -> UIColor {
        let posicion = Int( arc4random() ) % colores.count
        
        return colores[posicion]
    }
}