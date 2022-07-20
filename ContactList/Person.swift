//
//  Person.swift
//  ContactList
//
//  Created by Elena Kholodilina on 20.07.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
//        var contactList: [Person]
        
//        for name in DataStore().firstNames {
//            contactList.append(
              [  Person(
                firstName: DataStore().firstNames.randomElement() ?? " ",
                    lastName: DataStore().lastNames.randomElement() ?? " ",
                    email: DataStore().emails.randomElement() ?? " ",
                    phoneNumber: DataStore().phoneNumbers.randomElement() ?? " "
                )
//            )
              ]
//        }
//        return contactList
    }
    
}
