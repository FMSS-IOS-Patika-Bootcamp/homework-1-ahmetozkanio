//
//  ViewController.swift
//  FMSS-week3-homework
//
//  Created by Ahmet Ozkan on 9.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var eMail: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var adress: UILabel!
    @IBOutlet weak var birth: UILabel!
    
    var userModel = UserModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 

    @IBAction func userInfoFormViewRoute(_ sender: Any) {
        //UserFormViewController ID sini tanimliyoruz.
       // let viewCtrl = self.storyboard?.instantiateViewController(withIdentifier: "UserFormStoryboardID")
        
       // self.show(viewCtrl!, sender: nil)//
       // self.present(viewCtrl!, animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("basladi")
      if segue.identifier == "FormSegueID" {
          print("girdi")
            if let detailVC = segue.destination as? UserFormViewController {
                print("icerde")
                detailVC.dataTransferClosure = { [weak self] userItems in
                    self?.userModel = userItems
                    self?.userItemsInitial()
                }
            
        }
      
    }
    }
    
    func userItemsInitial(){
        firstName.text = userModel.firstName
        lastName.text = userModel.lastName
        eMail.text = userModel.eMail
        phone.text = userModel.phone
        adress.text = userModel.adress
        birth.text = userModel.birth
    }
}

