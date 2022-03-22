//
//  DataManager.swift
//  ContactsApp
//
//  Created by Евгения Аникина on 22.03.2022.
//

import Foundation

class DataManager {
    static let dataManager = DataManager()
    
    var names = [
        "Natasha", "Kate", "Ivan",
        "Jane", "Roman", "Mark",
        "Andy", "Opri", "Denice", "Zoi"
    ]
    
    var surnames = [
        "Potamkina", "Blue", "Markin",
        "Komi", "Hugo", "Guro",
        "Vizard", "Halo", "Degru", "Malkina"
    ]
    
    var emails = [
        "gogo@icloud.com", "forvard@icloud.com", "koli@icloud.com",
        "poli@icloud.com", "sudo@icloud.com", "bubo@icloud.com",
        "xolki@icloud.com", "funo@icloud.com", "uno@icloud.com",
        "sudoki@icloud.com"
    ]
    
    var phones = [
        "+7 201-238-8917", "+7 201-245-3197", "+7 317-506-9997",
        "+7 216-213-4983", "+7 402-956-9892", "+7 539-934-9423",
        "+7 404-611-5845", "+7 214-644-0464", "+7 406-889-1928",
        "+7 551-865-2060"
    ]

}

extension DataManager {
static func getPersonList() -> [Person] {
    
    var persons: [Person] = []
    let dataManager = DataManager.dataManager
    
    for iteration in 0...(dataManager.names.count - 1) {
        let person = Person(name: dataManager.names[iteration],
                            surname: dataManager.surnames[iteration],
                            email: dataManager.emails[iteration],
                            phone: dataManager.phones[iteration])
        persons.append(person)
    }
    return persons
}
}

