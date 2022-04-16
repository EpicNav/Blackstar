//
//  AuthenticationHelper.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-15.
//

import Foundation
import FirebaseAuth
import UIKit

class AuthenticationHelper {
    let userDefault = UserDefaults.standard
    let launchedBefore = UserDefaults.standard.bool(forKey: "isLoggedIn")
    
    func isLoggedIn() -> Bool {
        return Auth.auth().currentUser != nil
    }
    
    func pageSwapper(identifier: String) {
        // ...
        // after login is done, maybe put this in the login web service completion block

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: identifier)
        
        // This is to get the SceneDelegate object from your view controller
        // then call the change root view controller function to change to main tab bar
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(controller)
    }
    
    func performLogout() {
        print(String(describing: Auth.auth().currentUser?.email))
        if isLoggedIn() {
            print("Logged In")
            do {
                try Auth.auth().signOut()
                
                pageSwapper(identifier: "AuthenticationViewControllerIdentifier")
            } catch let error {
                print("Failed to log out due to error: " + error.localizedDescription)
            }
        }
    }
}
