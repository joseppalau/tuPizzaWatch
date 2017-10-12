//
//  MasaController.swift
//  tuPizzaWatch
//
//  Created by Josep Palau Caballero on 10/10/2017.
//  Copyright © 2017 palauturf. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {

    
    let grisClaro = UIColor(red: 179/255, green: 179/255, blue: 177/255, alpha: 1)
    
    let grisOscuro = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)

    
    var tamañoElegido: String = ""
    var masaElegida: String = ""
    
    
    @IBOutlet var delgadaLbl: WKInterfaceButton!
    
    @IBOutlet var crujienteLbl: WKInterfaceButton!
    
    @IBOutlet var gruesaLbl: WKInterfaceButton!

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let vt = context as! ValorPizza
        tamañoElegido = vt.valorTamaño
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

   
    @IBAction func delgadaBtn() {
        
        delgadaLbl.setBackgroundColor(grisOscuro)
        crujienteLbl.setBackgroundColor(grisClaro)
        gruesaLbl.setBackgroundColor(grisClaro)
        
        masaElegida = "Delgada"
       
    }
    

    @IBAction func crujienteBtn() {
        
        crujienteLbl.setBackgroundColor(grisOscuro)
        delgadaLbl.setBackgroundColor(grisClaro)
        gruesaLbl.setBackgroundColor(grisClaro)
        
        masaElegida = "Crujiente"
        
    }
    
    
    @IBAction func gruesBtn() {
        
        gruesaLbl.setBackgroundColor(grisOscuro)
        delgadaLbl.setBackgroundColor(grisClaro)
        crujienteLbl.setBackgroundColor(grisClaro)
        
        masaElegida = "Gruesa"
       
    }
    
    
    @IBAction func vamosBtn() {
        
        let valorMasaContexto = ValorPizza2(v: tamañoElegido, v2: masaElegida)
        pushController(withName: "IdentificadorQueso" , context: valorMasaContexto)
        
    }
    
}
