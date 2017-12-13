//
//  CollectionViewCell.swift
//  SmartHomeWS
//
//  Created by Peter on 12/11/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    @IBAction func logInButton(_ sender: UIButton) {
        //self.loginTextField.resignFirstResponder()
        //self.pwdTextField.resignFirstResponder()
        
        let alert = UIAlertController(title: nil, message: "Rest API don't implemented yet", preferredStyle: UIAlertControllerStyle.alert)
        let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(alertAction)
        self.window?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.loginTextField.becomeFirstResponder()
        self.pwdTextField.becomeFirstResponder()
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.loginTextField.resignFirstResponder()
        self.pwdTextField.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.loginTextField.resignFirstResponder()
        self.pwdTextField.resignFirstResponder()
        return true
    }
}
