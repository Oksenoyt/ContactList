//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Elena Kholodilina on 20.07.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet var contactFullNameLabel: UILabel!
    @IBOutlet var contactEmailLabel: UILabel!
    @IBOutlet var contactPhoneLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactFullNameLabel.text = contact.fullName
        contactEmailLabel.text = contact.email
        contactPhoneLabel.text = contact.phoneNumber
    }

}
