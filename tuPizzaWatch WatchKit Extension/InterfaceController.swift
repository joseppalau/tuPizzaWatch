//
//  InterfaceController.swift
//  tuPizzaWatch WatchKit Extension
//
//  Created by Administrador on 5/10/17.
//  Copyright © 2017 palauturf. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    let grisClaro = UIColor(red: 179/255, green: 179/255, blue: 177/255, alpha: 1)
    
    let grisOscuro = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
    
    
    @IBOutlet var grandeLbl: WKInterfaceButton!
    
    @IBOutlet var medianaLbl: WKInterfaceButton!
    
    @IBOutlet var pequeñaLbl: WKInterfaceButton!
    
    var tamañoElegido: String = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    
    @IBAction func grandeBtn() {
        
        grandeLbl.setBackgroundColor(grisOscuro)
        medianaLbl.setBackgroundColor(grisClaro)
        pequeñaLbl.setBackgroundColor(grisClaro)
        
        tamañoElegido = "Grande"
      
    }
    
    
    @IBAction func medianaBtn() {
        
        medianaLbl.setBackgroundColor(grisOscuro)
        grandeLbl.setBackgroundColor(grisClaro)
        pequeñaLbl.setBackgroundColor(grisClaro)
        
        tamañoElegido = "Mediana"
       
    }

    
    @IBAction func pequeñaBtn() {
        
        pequeñaLbl.setBackgroundColor(grisOscuro)
        grandeLbl.setBackgroundColor(grisClaro)
        medianaLbl.setBackgroundColor(grisClaro)
        
        tamañoElegido = "Pequeña"
        
    }

    
    @IBAction func seguimosBtn() {
        
        let valorTamañoContexto = ValorPizza(v:tamañoElegido)
        pushController(withName: "IdentificadorMasa", context: valorTamañoContexto)
        
    }
    
}
