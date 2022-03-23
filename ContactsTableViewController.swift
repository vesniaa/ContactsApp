//
//  ContactsTableViewController.swift
//  ContactsApp
//
//  Created by Евгения Аникина on 22.03.2022.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    private var persons = DataManager.getPersonList()

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)
        
        let personName = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = personName.name + " " + personName.surname
        content.image = UIImage(named: personName.title)

        cell.contentConfiguration = content
        
        return cell
        
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let selectedPerson = persons[indexPath.row]
        
        detailsVC.personInfo = selectedPerson
    }

}

extension ContactsTableViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
}
