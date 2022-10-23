//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Anthony Cianfrocco on 10/16/22.
//

import SwiftUI

final class AccountViewModel: ObservableObject{
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else { return }
        
        // DISCLAIMER: Don't store User profile info in AppStorage in real apps
        // If the user deletes the app, the data is lost
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
        
        print("Changes have been saved successfully")
    }
    
    func retrieveUser() {
        guard let userData = userData else {
            return
        }

        // DISCLAIMER: Don't store User profile info in AppStorage in real apps
        // If the user deletes the app, the data is lost
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
}
