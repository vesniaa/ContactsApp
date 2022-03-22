//
//  Person.swift
//  ContactsApp
//
//  Created by Евгения Аникина on 22.03.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String{
        "\(firstName) \(lastName)"
    }
    
    static func getPersonList() -> [Person] {
        
        var persons: [Person] = []
        
        for personsCounter in 0...DataManager.dataManager.names.count - 1 {
            let person = Person(
                firstName: DataManager.dataManager.names[personsCounter],
                lastName: DataManager.dataManager.surnames[personsCounter],
                phone: DataManager.dataManager.emails[personsCounter],
                email: DataManager.dataManager.phones[personsCounter])
            
            persons.append(person)
        }
        return persons.shuffled()
    }
}
    

