//
//  LoginViewController.swift
//  ProjectManager_Registration
//
//  Created by Stefan Francisco on 11/20/16.
//  Copyright © 2016 Stefan Francisco. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    let ref = FIRDatabase.database().reference(withPath: "login-credentials")
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    
    
    @IBAction func submitData(_ sender: UIButton) {
        let username = userName.text!
        let password = passWord.text!
        
        
        
        
    }
    func buttonStyle(){
        if (userName.text?.isEmpty)! || (passWord.text?.isEmpty)!
        {
          submit.isEnabled = false
            
        }
        else
        {
            submit.isEnabled = true
        }
    }


    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(LoginViewController.buttonStyle), name: NSNotification.Name.UITextFieldTextDidChange, object: nil)
        submit.isEnabled = false

                // Do any additional setup after loading the view, typically from a nib.
    }

    
}
