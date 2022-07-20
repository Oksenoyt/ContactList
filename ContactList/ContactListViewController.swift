//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Elena Kholodilina on 20.07.2022.
//

import UIKit

class ContactListViewController: UITableViewController {

    var contactList = getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName

        return cell
    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

}

// MARK: - Private functions

extension ContactListViewController {
    private func getContactList() -> [Person] {
//        var contactList: [Person]
//
        for _ in DataStore().firstNames {
            contactList.append(Person.getPerson())
        }
        return contactList
    }
}
