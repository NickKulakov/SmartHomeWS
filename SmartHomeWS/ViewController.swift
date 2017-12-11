//
//  ViewController.swift
//  SmartHomeWS
//
//  Created by Peter on 12/11/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseidenfierCollectionViewCell", for: indexPath) as! CollectionViewCell
            cell.loginTextField.placeholder = "login"
            cell.pwdTextField.placeholder = "password"
            cell.pwdTextField.isSecureTextEntry = true
            cell.logoLabel.textColor = UIColor.green
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "defaultidentifier", for: indexPath)
            cell.backgroundColor = UIColor.blue
            return cell
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return self.view.frame.size
//            // CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)// UIScreen.main.bounds
//    }
}



