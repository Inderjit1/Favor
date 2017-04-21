//
//  NewUserViewController.swift
//  Favor
//
//  Created by Bassi on 4/20/17.
//  Copyright © 2017 Bassi. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class NewUserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var UserIDLabel: UITextField!
    @IBOutlet weak var PasswordLabel: UITextField!

      
    @IBAction func Work(_ sender: AnyObject) {
        if UserIDLabel.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        }
        else
        {
            FIRAuth.auth()?.createUser(withEmail: UserIDLabel.text!, password: PasswordLabel.text!) {(user, error) in
                
                if error == nil
                {
                    print("The sign-up was successful!\n")
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                    self.present(vc!, animated: true, completion: nil)
                }
                else
                {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                    
                }
            }
        }
        

    }
    @IBAction func CreateNewUserAccount(_ sender: UIButton) {
        if UserIDLabel.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        }
        else
        {
            FIRAuth.auth()?.createUser(withEmail: UserIDLabel.text!, password: PasswordLabel.text!) {(user, error) in
                
                if error == nil
                {
                    print("The sign-up was successful!\n")
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
                    self.present(vc!, animated: true, completion: nil)
                }
                else
                {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                    
                }
            }
        }

    }
}
