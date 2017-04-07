//
//  EmployeeRegisterViewController.swift
//  ProjectManager_Registration
//
//  Created by Stefan Francisco on 11/18/16.
//  Copyright © 2016 Stefan Francisco. All rights reserved.
//

import UIKit

class EmployeeRegisterViewController: UIViewController {
    
    @IBOutlet weak var whatIsThis: UIView!

    @IBOutlet weak var whatCompanyDoYouWorkFor: UITextField!
    
    @IBOutlet var nextButton: UIButton!
    @IBOutlet weak var companyCode: UITextField!
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func whatButton(_ sender: Any) {
        if(whatIsThis.isHidden == true){
        whatIsThis.isHidden = false
        } else {
            whatIsThis.isHidden = true
        }
    }
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    func buttonStyle(){
        if (!whatCompanyDoYouWorkFor!.hasText) || (!companyCode!.hasText)
            
        {
            nextButton.isEnabled = false
            
        }
        else
        {
            nextButton.isEnabled = true
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        whatIsThis.isHidden = true
        whatIsThis.backgroundColor = UIColor(patternImage: UIImage(named:"chat")!)
        NotificationCenter.default.addObserver(self, selector: #selector(CEORegisterViewController.buttonStyle), name: NSNotification.Name.UITextFieldTextDidChange, object: nil)
        nextButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
}



