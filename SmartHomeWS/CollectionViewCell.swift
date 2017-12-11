//
//  CollectionViewCell.swift
//  SmartHomeWS
//
//  Created by Peter on 12/11/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var pwdTextField: UITextField!
    
  
    
    @IBAction func logInButton(_ sender: UIButton) {
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.loginTextField.resignFirstResponder()
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
