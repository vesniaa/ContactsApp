//
//  DetailsViewController.swift
//  ContactsApp
//
//  Created by Евгения Аникина on 22.03.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personInfo.name + " " + personInfo.surname
        
        phoneLabel.text = "phone: " + personInfo.phone
        emailLabel.text = "email: " + personInfo.email
    }
}
