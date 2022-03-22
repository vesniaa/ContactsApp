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
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
