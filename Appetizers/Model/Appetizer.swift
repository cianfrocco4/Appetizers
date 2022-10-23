//
//  Appetizer.swift
//  Appetizers
//
//  Created by Anthony Cianfrocco on 9/5/22.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse : Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test App",
                                           description: "This is the description for my app. It's yummy.",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           calories: 99,
                                           protein: 89,
                                           carbs: 79)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Test App1",
                                           description: "This is the description for my app. It's yummy.",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           calories: 99,
                                           protein: 89,
                                           carbs: 79)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "Test App2",
                                           description: "This is the description for my app. It's yummy.",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           calories: 99,
                                           protein: 89,
                                           carbs: 79)
    
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "Test App3",
                                           description: "This is the description for my app. It's yummy.",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           calories: 99,
                                           protein: 89,
                                           carbs: 79)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
