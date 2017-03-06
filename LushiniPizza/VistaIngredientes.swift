//
//  VistaIngredientes.swift
//  LushiniPizza
//
//  Created by Luis Venegas on 3/5/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textoIngredienteUno: UITextField!
    @IBOutlet weak var textoIngredienteDos: UITextField!
    @IBOutlet weak var textoIngredienteTres: UITextField!
    @IBOutlet weak var textoIngredienteCuatro: UITextField!
    @IBOutlet weak var dropDownIngredientes: UIPickerView!
    @IBOutlet weak var terminarPedidoIngredientes: UIButton!
    
    var listaIngredientes = ["Peperoni","Jamon","Cebolla","Tomate","Aceitunas","Pimiento Rojo","Nada mas"]

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
    
    func numberOfComponentsInPickerView(pickerVier:UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return listaIngredientes.count
        
    }
    
    func pickerView (pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String! {
        
        self.view.endEditing(true)
        return listaIngredientes[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.textoIngredienteUno.text = self.listaIngredientes[row]
        self.textoIngredienteDos.text = self.listaIngredientes[row]
        self.textoIngredienteTres.text = self.listaIngredientes[row]
        self.textoIngredienteCuatro.text = self.listaIngredientes[row]
        self.dropDownIngredientes.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if textField == self.textoIngredienteUno {
            self.dropDownIngredientes.isHidden = false
        }
        if textField == self.textoIngredienteDos {
            self.dropDownIngredientes.isHidden = false
        }
        if textField == self.textoIngredienteTres {
            self.dropDownIngredientes.isHidden = false
        }
        if textField == self.textoIngredienteCuatro {
            self.dropDownIngredientes.isHidden = false
        }
        
    }

}
