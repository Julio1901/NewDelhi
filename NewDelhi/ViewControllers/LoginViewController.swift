//
//  ViewController.swift
//  NewDelhi
//
//  Created by Julio Cesar  on 22/06/22.
//

import UIKit

class LoginViewController: UIViewController {

   
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    private let loginViewModel = LoginViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBinders()
        
    }

    
    
    
    
    private func setupBinders() {
        loginViewModel.error.bind{
            [weak self] error in
            if let error = error{
                print(error)
            } else {
                self?.goToHomePage()
            }
        }
    }
    
    
    private func goToHomePage(){
        let controller =
        storyboard?
            .instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            present(controller, animated: true, completion: nil)
    }
    
  
 
    @IBAction func btnLoginHasClicked(_ sender: UIButton){
        guard let email = emailField.text,
              let password = passwordField.text else{
            print("Please enter email and password")
            return}
        
        loginViewModel.login(email: email, password: password)
        
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
 
}

