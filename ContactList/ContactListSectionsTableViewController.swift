//
//  ContactListSectionsTableViewController.swift
//  ContactList
//
//  Created by Elena Kholodilina on 20.07.2022.
//

import UIKit

class ContactListSectionsTableViewController: UITableViewController {

    var contactList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.numberOfRows(inSection: 2)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedContact", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.email
        } else {
            content.text = contact.phoneNumber
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
