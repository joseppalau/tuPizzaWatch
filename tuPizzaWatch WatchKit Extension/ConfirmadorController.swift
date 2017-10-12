//
//  ConfirmadorController.swift
//  tuPizzaWatch
//
//  Created by Josep Palau Caballero on 12/10/2017.
//  Copyright © 2017 palauturf. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmadorController: WKInterfaceController {

    var tamañoElegido: String = ""
    var masaElegida: String = ""
    var quesoElegido: String = ""
    var listaIngredientesElegidos: String = ""

    
    @IBOutlet var valorTamañoLbl: WKInterfaceLabel!
    
    @IBOutlet var valorMasaLbl: WKInterfaceLabel!
    
    @IBOutlet var valorQuesoLbl: WKInterfaceLabel!

    @IBOutlet var valorIngredientesLbl: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let vI = context as! ValorPizza4
        tamañoElegido = vI.valorTamaño
        masaElegida = vI.valorMasa
        quesoElegido = vI.valorQueso
        listaIngredientesElegidos = vI.valorIngredientes
    
        
        valorTamañoLbl.setText(tamañoElegido)
        
        valorMasaLbl.setText(masaElegida)

        valorQuesoLbl.setText(quesoElegido)
        
        valorIngredientesLbl.setText(listaIngredientesElegidos)
        
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
    

    
    
    

}
