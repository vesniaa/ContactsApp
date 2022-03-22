//
//  ContactsSectionViewController.swift
//  ContactsApp
//
//  Created by Евгения Аникина on 22.03.2022.
//

import UIKit

class ContactsSectionViewController: UITableViewController {

    private var personsList = DataManager.getPersonList()
    
    var persons = DataManager.getPersonList()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "structPerson", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = persons[indexPath.section].name + " " + persons[indexPath.section].surname
        case 1:
            content.text = persons[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        default:
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "mail")
        }
        cell.contentConfiguration = content
        return cell
    }
}
