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
    @IBOutlet var contactsImageView: UIImageView!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personInfo.name + " " + personInfo.surname
        contactsImageView.image = UIImage(named: personInfo.title)
        phoneLabel.text = "Phone: " + personInfo.phone
        emailLabel.text = "Email: " + personInfo.email
    }
}
