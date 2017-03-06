//
//  VistaConffirmacion.swift
//  LushiniPizza
//
//  Created by Luis Venegas on 3/5/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import UIKit

class VistaConffirmacion: UIViewController, UITextFieldDelegate {

    var tamanoSize:String = " "
    var masa:String = " "
    var queso:String = " "
    var ingredienteUno:String = " "
    var ingredienteDos:String = " "
    var ingredienteTres:String = " "
    var ingredienteCuatro:String = " "
    
    @IBOutlet weak var etiquetaSize: UILabel!
    @IBOutlet weak var etiquetaMasa: UILabel!
    @IBOutlet weak var etiquetaQueso: UILabel!
    @IBOutlet weak var etiquetaIngredienteUno: UILabel!
    @IBOutlet weak var etiquetaIngredienteDos: UILabel!
    @IBOutlet weak var etiquetaIngredienteTres: UILabel!
    @IBOutlet weak var etiquetaIngredienteCuatro: UILabel!
    @IBOutlet weak var confirmarPedido: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        etiquetaSize.text=String(tamanoSize)
        etiquetaMasa.text=String(masa)
        etiquetaQueso.text=String(queso)
        etiquetaIngredienteUno.text=String(ingredienteUno)
        etiquetaIngredienteDos.text=String(ingredienteDos)
        etiquetaIngredienteTres.text=String(ingredienteTres)
        etiquetaIngredienteCuatro.text=String(ingredienteCuatro)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
