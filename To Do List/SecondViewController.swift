//
//  SecondViewController.swift
//  To Do List
//
//  Created by Abdallah Eid on 10/23/17.
//  Copyright © 2017 TripleApps. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!

    @IBAction func addButton(_ sender: Any) {
        
        var items:[String]
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
            
            items.append(textField.text!)
            
        }else {
            
            items = [textField.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        textField.text = ""
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

