//
//  QuesoController.swift
//  tuPizzaWatch
//
//  Created by Josep Palau Caballero on 10/10/2017.
//  Copyright © 2017 palauturf. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {
    
    
    let grisClaro = UIColor(red: 179/255, green: 179/255, blue: 177/255, alpha: 1)
    
    let grisOscuro = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
    
    
    var tamañoElegido: String = ""
    var masaElegida: String = ""
    var quesoElegido: String = ""

    
    @IBOutlet var mozarelaLbl: WKInterfaceButton!
    
    @IBOutlet var cheddarLbl: WKInterfaceButton!
    
    @IBOutlet var parmesanoLbl: WKInterfaceButton!
    
    @IBOutlet var sinQuesoLbl: WKInterfaceButton!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let vM = context as! ValorPizza2
        tamañoElegido = vM.valorTamaño
        masaElegida = vM.valorMasa
        

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
    
    
    
    @IBAction func mozarelaBtn() {
        
        mozarelaLbl.setBackgroundColor(grisOscuro)
        cheddarLbl.setBackgroundColor(grisClaro)
        parmesanoLbl.setBackgroundColor(grisClaro)
        sinQuesoLbl.setBackgroundColor(grisClaro)
        
        quesoElegido = "Mozarela"
        
    }
    
    
    @IBAction func cheddarBtn() {
        
        cheddarLbl.setBackgroundColor(grisOscuro)
        mozarelaLbl.setBackgroundColor(grisClaro)
        parmesanoLbl.setBackgroundColor(grisClaro)
        sinQuesoLbl.setBackgroundColor(grisClaro)
        
        quesoElegido = "Cheddar"
        
    }
    
    
    @IBAction func parmesanoBtn() {
        
        parmesanoLbl.setBackgroundColor(grisOscuro)
        mozarelaLbl.setBackgroundColor(grisClaro)
        cheddarLbl.setBackgroundColor(grisClaro)
        sinQuesoLbl.setBackgroundColor(grisClaro)
        
        quesoElegido = "Parmesano"
    
    }
    
    @IBAction func sinQuesoBtn() {
        
        sinQuesoLbl.setBackgroundColor(grisOscuro)
        mozarelaLbl.setBackgroundColor(grisClaro)
        cheddarLbl.setBackgroundColor(grisClaro)
        parmesanoLbl.setBackgroundColor(grisClaro)
        
        quesoElegido = "Sin Queso"
        
    }
    
    
    @IBAction func yaCasiEstaBtn() {
        
        let valorQuesoContexto = ValorPizza3(v: tamañoElegido, v2: masaElegida, v3: quesoElegido)
        pushController(withName: "IdentificadorIngredientes", context: valorQuesoContexto)
        
    }
    
    
    
    
    
    

}
