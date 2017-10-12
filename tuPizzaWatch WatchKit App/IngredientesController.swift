//
//  IngredientesController.swift
//  tuPizzaWatch
//
//  Created by Josep Palau Caballero on 10/10/2017.
//  Copyright © 2017 palauturf. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {

    
    let grisClaro = UIColor(red: 179/255, green: 179/255, blue: 177/255, alpha: 1)
    let grisOscuro = UIColor(red: 85/255, green: 85/255, blue: 85/255, alpha: 1)
    
    
    var tamañoElegido: String = ""
    var masaElegida: String = ""
    var quesoElegido: String = ""
    var listaIngredientesElegidos: String = ""
    
    var contadorIngredientes: Int = 0
    
    var listaIngredientes = ["Aceitunas", "Chorizo", "Morcilla", "Piña", "Pollo", "Anchoas", "Carne", "Alcachofa", "Champiñones", "Huevo"]

    
    @IBOutlet var contadorLbl: WKInterfaceLabel!
    
    // se relacionado el digito final del nmbre boton con la posicion del label en el array "listaIngredientes"
    @IBOutlet var btn0: WKInterfaceButton!
    
    @IBOutlet var btn1: WKInterfaceButton!
    
    @IBOutlet var btn2: WKInterfaceButton!
   
    @IBOutlet var btn3: WKInterfaceButton!
    
    @IBOutlet var btn4: WKInterfaceButton!
    
    @IBOutlet var btn5: WKInterfaceButton!
    
    @IBOutlet var btn6: WKInterfaceButton!
 
    @IBOutlet var btn7: WKInterfaceButton!
   
    @IBOutlet var btn8: WKInterfaceButton!
    
    @IBOutlet var btn9: WKInterfaceButton!
    
    
    var btnEscogido: [Bool] = [false, false, false, false, false, false, false, false, false, false]
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let vQ = context as! ValorPizza3
        tamañoElegido = vQ.valorTamaño
        masaElegida = vQ.valorMasa
        quesoElegido = vQ.valorQueso
        
        // Configure interface objects here
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    func añadirIngredientes(boton: WKInterfaceButton, posicion: Int) {
        
        if contadorIngredientes < 5 && btnEscogido[posicion] == false {
            
            boton.setBackgroundColor(grisOscuro)
            btnEscogido[posicion] = true
            contadorIngredientes += 1
            contadorLbl.setText("\(contadorIngredientes) de 5")
            
        }
            
        else if btnEscogido[posicion] == true {
            
            boton.setBackgroundColor(grisClaro)
            btnEscogido[posicion] = false
            contadorIngredientes -= 1
            contadorLbl.setText("\(contadorIngredientes) de 5")
        }
        

    }
    
    
    @IBAction func accionBtn0() {
        
        añadirIngredientes(boton: btn0, posicion: 0)
        
    }
  
    
    @IBAction func accionBtn1() {
        
         añadirIngredientes(boton: btn1, posicion: 1)
    }
    

    @IBAction func accionBtn2() {
        
        añadirIngredientes(boton: btn2, posicion: 2)
        
    }
    
    @IBAction func accionBtn3() {
        
        añadirIngredientes(boton: btn3, posicion: 3)
        
    }
    
    
    @IBAction func accionBtn4() {
        
       añadirIngredientes(boton: btn4, posicion: 4)
        
    }
    
    @IBAction func accionBtn5() {
        
       añadirIngredientes(boton: btn5, posicion: 5)
    }
   
    
    @IBAction func accionBtn6() {
        
       añadirIngredientes(boton: btn6, posicion: 6)
        
    }
    
    @IBAction func accionBtn7() {
     
        añadirIngredientes(boton: btn7, posicion: 7)
        
    }
    

    @IBAction func accionBtn8() {
      
      añadirIngredientes(boton: btn8, posicion: 8)
        
    }
    
    
    @IBAction func accionBtn9() {
        
       añadirIngredientes(boton: btn9, posicion: 9)
        
    }
    
    
    @IBAction func adelanteBtn() {
        
        for i in 0...9 {
        
            if btnEscogido[i] {
                
                listaIngredientesElegidos += "\(listaIngredientes[i]) "
                
            }
                
        }
        
        let valorIngredientesContexto = ValorPizza4(v: tamañoElegido, v2: masaElegida, v3: quesoElegido, v4: listaIngredientesElegidos)
        pushController(withName: "IdentificadorConfirmador", context: valorIngredientesContexto)
  
            
    }
        

}
    
    
    
    
    
    

