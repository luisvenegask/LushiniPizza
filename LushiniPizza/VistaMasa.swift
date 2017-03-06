//
//  VistaMasa.swift
//  LushiniPizza
//
//  Created by Luis Venegas on 3/5/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textoMasas: UITextField!
    @IBOutlet weak var dropDownMasas: UIPickerView!
    @IBOutlet weak var seguirMasas: UIButton!
    
    var listaMasas = ["Delgada","Crujiente","Gruesa"]

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
        
        return listaMasas.count
        
    }
    
    func pickerView (pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String! {
        
        self.view.endEditing(true)
        return listaMasas[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.textoMasas.text = self.listaMasas[row]
        self.dropDownMasas.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if textField == self.textoMasas {
            self.dropDownMasas.isHidden = false
            
        }
    }

}
