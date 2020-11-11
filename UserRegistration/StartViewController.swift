//
//  StartViewController.swift
//  UserRegistration
//
//  Created by Сергей Голенко on 09.11.2020.
//  Copyright © 2020 Сергей Голенко. All rights reserved.
//

import UIKit

class StartViewController: UIViewController,UITextFieldDelegate{
    
    var loginOriginal = "1989sergiotay@gmail.com"
    var passwordOriginal = "co462140"

    //Properties
    
 

    @IBOutlet weak var goButtonOutlet: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func goButton(_ sender: UIButton) {
        if loginOriginal == loginTextField.text && passwordOriginal == passwordTextField.text{
        let photoViewController = PhotoViewController()
        self.navigationController?.pushViewController(photoViewController, animated: true)
        } else {
            print("Неверный логин")
            createAllert()
            
        }
    }
    //Registration button
    @IBAction func RegisterButton(_ sender: Any) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Subscribed on TextFielDelegate
        loginTextField.delegate = self
        passwordTextField.delegate = self
        
        //Check login and password on the nil
         checkLoginAndPassword()
        
        //Add observer notificationCenter
        NotificationCenter.default.addObserver(self , selector: #selector(setLoginTextField), name: NSNotification.Name(rawValue: "registration"), object:nil)
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue:"registration"), object: nil, queue: OperationQueue.main) { (registrationView) in
            var item = registrationView.object as! RegistrationViewController
            self.passwordOriginal = item.newPasswordTextField.text!
        }

    }
    
    //Method for NotificationCenter
    @objc func setLoginTextField(infa:Notification){
        let registrViewController = infa.object as! RegistrationViewController
        loginOriginal = registrViewController.newLoginTextField.text!
    }
  
    //Create allert
    func createAllert(){
        let allert = UIAlertController(title: "Wrong login or password!", message: nil, preferredStyle: .alert)
    
        let allertAction = UIAlertAction(title: "OK", style:.cancel, handler: nil)
        allert.addAction(allertAction)
        self.present(allert, animated: true, completion: nil)
    
    }
    
     // Function. Check login and password on the nil
    func checkLoginAndPassword(){
        if loginTextField.text!.isEmpty{
            goButtonOutlet.isHidden = true
        }
    }
    
    //MARK: - TextField Delegate

    func textFieldDidBeginEditing(_ textField: UITextField) {
        goButtonOutlet.isHidden = false
    }
 

}
