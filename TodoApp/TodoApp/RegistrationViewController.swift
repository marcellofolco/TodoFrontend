//
//  RegistrationViewController.swift
//  2016-06-01-codelab-frontend
//
//  Created by Fatih Nayebi on 2016-05-31.
//  Copyright © 2016 Swift-Mtl. All rights reserved.
//

import UIKit

protocol RegistrationDelegate {
    func userData(data: String)
    
}

class RegistrationViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    var delegate: RegistrationDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnRegisterUser(_ sender: Any) {
        
        let userName = userNameTF.text;
        let password = passwordTF.text;
        
        UserDefaults.standard.set(userName,forKey: value(forKey: "userName") as! String)
        UserDefaults.standard.set(password,forKey: value(forKey: "password") as! String)
        
        
        if delegate != nil {
            if userNameTF.text != nil {
                let data = userNameTF.text
                delegate?.userData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
        
    }

}

