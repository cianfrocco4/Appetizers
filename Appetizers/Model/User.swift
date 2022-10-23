//
//  User.swift
//  Appetizers
//
//  Created by Anthony Cianfrocco on 10/16/22.
//

import Foundation

// Conform to Codeable to be able to store in AppStorage User Defaults
struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
