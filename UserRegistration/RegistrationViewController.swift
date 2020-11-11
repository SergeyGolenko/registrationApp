//
//  RegistrationViewController.swift
//  UserRegistration
//
//  Created by Сергей Голенко on 09.11.2020.
//  Copyright © 2020 Сергей Голенко. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    var startViewController = StartViewController()
    
    
    
    @IBOutlet weak var newLoginTextField: UITextField!
    
   
  
    @IBOutlet weak var newPasswordTextField: UITextField!
    
    
    
    @IBAction func doneButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "registration"), object:self)
        navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
      
    }
    
    

    
   

 

}
