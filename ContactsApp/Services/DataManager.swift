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
        "Lenita", "Naomi", "Stevie",
        "Tanja", "Quincy", "Felecia",
        "Teddy", "Cecil", "Denice", "Noe"
    ]
    
    var surnames = [
        "Zaldivar", "Bledsoe", "Lofthouse",
        "Verrett", "Hirschman", "Tuohy",
        "Whichard", "Hugley", "Degraw", "Mcglone"
    ]
    
    var emails = [
        "poweqpe@icloud.com", "wqepowpqwoe@icloud.com", "jsaldjaasd@icloud.com",
        "dsafsfs@icloud.com", "gsdgfsfds@icloud.com", "banffds@icloud.com",
        "oepqwep@icloud.com", "asdkldakjd@icloud.com", "dfsadfs@icloud.com",
        "sdfsdfsdf@icloud.com"
    ]
    
    var phones = [
        "+1 201-238-8917", "+1 201-245-3197", "+1 317-506-9997",
        "+1 216-213-4983", "+1 402-956-9892", "+1 539-934-9423",
        "+1 404-611-5845", "+1 214-644-0464", "+1 406-889-1928",
        "+1 551-865-2060"
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

