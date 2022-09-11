//
//  UserFormViewController.swift
//  FMSS-week3-homework
//
//  Created by Ahmet Ozkan on 10.09.2022.
//

import UIKit

class UserFormViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var eMailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    @IBOutlet weak var birthYearTextField: UITextField!
    
  
    var userInfoModel = UserModel()
    private let viewController = ViewController()
    
    var dataTransferClosure: ((UserModel) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func successButton(_ sender: Any) {
       
        userInfoModel.firstName = firstNameTextField.text!
        userInfoModel.lastName = lastNameTextField.text!
        userInfoModel.eMail = eMailTextField.text!
        userInfoModel.phone = phoneTextField.text!
        userInfoModel.adress = adressTextField.text!
        userInfoModel.birth = birthYearTextField.text!
     print(userInfoModel.firstName ?? "")
        
        dismiss(animated: true) { [weak self] in
            self?.dataTransferClosure?(self!.userInfoModel)
     }
 
        
    }
}

