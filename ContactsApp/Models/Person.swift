//
//  Person.swift
//  ContactsApp
//
//  Created by Евгения Аникина on 22.03.2022.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var title: String {
        "\(name) \(surname)"
    }
}
