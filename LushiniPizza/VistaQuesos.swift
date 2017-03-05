//
//  VistaQuesos.swift
//  LushiniPizza
//
//  Created by Luis Venegas on 3/5/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import UIKit

class VistaQuesos: UIViewController {

    @IBOutlet weak var textoQuesos: UITextField!
    @IBOutlet weak var dropDownQuesos: UIPickerView!
    
    var listaQuesos = ["Mozzarella","Chedar","Parmesano","Sin Queso"]

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
        
        return listaQuesos.count
        
    }
    
    func pickerView (pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String! {
        
        self.view.endEditing(true)
        return listaQuesos[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.textoQuesos.text = self.listaQuesos[row]
        self.dropDownQuesos.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        if textField == self.textoQuesos {
            self.dropDownQuesos.isHidden = false
            
        }
    }

}
