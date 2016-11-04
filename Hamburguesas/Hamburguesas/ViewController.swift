//
//  ViewController.swift
//  Hamburguesas
//
//  Created by turin on 04/11/16.
//  Copyright © 2016 turin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var paises = ColeccionDePaises()
    var hamburguesas = ColeccionDeHamburguesa()
    var color = ColeccionDeColores()
    
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblHamburguesa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func cambios() {
        view.backgroundColor = color.obtencionColor()
        
        lblPais.text = paises.obtenPais()
        lblHamburguesa.text = hamburguesas.obtenHamburguesa()
    }

}

