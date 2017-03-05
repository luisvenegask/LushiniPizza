//
//  VistaSizes.swift
//  LushiniPizza
//
//  Created by Luis Venegas on 3/5/17.
//  Copyright © 2017 Luis Venegas. All rights reserved.
//

import UIKit

class VistaSizes: UIViewController {

    @IBOutlet weak var textoSize: UITextField!
    @IBOutlet weak var dropDownSize: UIPickerView!
    
    var listaSize = ["Small 12inch","Medium 14inch","Large 16inch"]
    
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
    
        return listaSize.count
        
    }
    
    func pickerView (pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String! {
    
        self.view.endEditing(true)
        return listaSize[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        self.textoSize.text = self.listaSize[row]
        self.dropDownSize.isHidden = true
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
    
        if textField == self.textoSize {
        self.dropDownSize.isHidden = false
            
        }
    }
    
    
}
