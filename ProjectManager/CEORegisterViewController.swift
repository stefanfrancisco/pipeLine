//
//  CEORegisterViewController.swift
//  ProjectManager_Registration
//
//  Created by Stefan Francisco on 11/18/16.
//  Copyright © 2016 Stefan Francisco. All rights reserved.
//

import UIKit
import Firebase

class CEORegisterViewController: UIViewController {

    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var eMail: UITextField!
    @IBOutlet weak var company: UITextField!
    @IBOutlet var userName: UITextField!
    @IBOutlet var passWord: UITextField!
  
    @IBOutlet weak var submit: UIButton!
    @IBAction func submitData(_ sender: UIButton) {
        let firstNameField = firstName.text!
        let lastNameField = lastName.text!
        let emailField = eMail.text!
        let usernameField = userName.text!
        let passwordField = passWord.text!
        let companyField = company.text!
        
        
        
        
    }
    
    func buttonStyle(){
        if (firstName.text?.isEmpty)! || (lastName.text?.isEmpty)! || (eMail.text?.isEmpty)! || (company.text?.isEmpty)! || (userName.text?.isEmpty)!
            
        {
            submit.isEnabled = false
            
        }
        else
        {
            submit.isEnabled = true
        }
    }
   
    @IBOutlet weak var tableView: UITableView!
       override
    func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(CEORegisterViewController.buttonStyle), name: NSNotification.Name.UITextFieldTextDidChange, object: nil)
        submit.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }

}

