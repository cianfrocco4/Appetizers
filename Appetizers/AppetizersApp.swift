//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Anthony Cianfrocco on 9/5/22.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
