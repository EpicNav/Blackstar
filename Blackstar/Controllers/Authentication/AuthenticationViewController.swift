//
//  LoginViewController.swift
//  Blackstar
//
//  Created by EpicNav on 2022-04-15.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import GoogleSignIn

class AuthenticationViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let authHelper = AuthenticationHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func authenticate(_ sender: Any) {
        self.loginWithEmail(email: emailField.text!, password: passwordField.text!)
    }
    
    @IBAction func authenticateWithDiscord(_ sender: Any) {
        let alert = UIAlertController(title: "Discord Authentication", message: "Discord authentication is not initialized as of now. Please stay tuned for updates", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func authenticateWithGoogle(_ sender: Any) {
        googleAuth()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return .portrait
        }
    }
}

// Handle Firebase Authentication
extension AuthenticationViewController {
    func loginWithEmail(email: String, password: String) -> Void {
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if let error = error as? NSError {
              switch AuthErrorCode(rawValue: error.code) {
              case .operationNotAllowed: break
                // Error: Indicates that email and password accounts are not enabled. Enable them in the Auth section of the Firebase console.
              case .userDisabled: break
                // Error: The user account has been disabled by an administrator.
              case .wrongPassword: break
                // Error: The password is invalid or the user does not have a password.
              case .invalidEmail: break
                // Error: Indicates the email address is malformed.
              case .userNotFound: do {
                  self.createAccountWithEmail(email: email, password: password)
              }
                  break
              default:
                  print("Error: \(error.localizedDescription)")
              }
            } else {
                self.authHelper.pageSwapper(identifier: "MainViewControllerIdentifier")
                
              print("User signs in successfully")
            }
        }
    }
    
    func createAccountWithEmail(email: String, password: String) -> Void {
        Auth.auth().createUser(withEmail: email, password: password) {
            authResult, error in
            guard let error = error as? NSError else {
                print ("User signed up successfully")
                let newUserInfo = Auth.auth().currentUser
                let emailId = newUserInfo?.email
                
                self.loginWithEmail(email: emailId!, password: password)
                return
            }
            
            switch AuthErrorCode(rawValue: error.code) {
            case .operationNotAllowed: break
              // Error: The given sign-in provider is disabled for this Firebase project. Enable it in the Firebase console, under the sign-in method tab of the Auth section.
            case .emailAlreadyInUse: break
              // Error: The email address is already in use by another account.
            case .invalidEmail: break
              // Error: The email address is badly formatted.
            case .weakPassword: break
              // Error: The password must be 6 characters long or more.
            default:
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
    func googleAuth() {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }

        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)

        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(with: config, presenting: self) { [unowned self] user, error in

            if let error = error {
                print(error)
                return
            }

            guard let authentication = user?.authentication, let idToken = authentication.idToken else { return }

            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: authentication.accessToken)
                
            Auth.auth().signIn(with: credential) { authResult, error in
                if let error = error {
                    if (error as NSError).code == GIDSignInError.hasNoAuthInKeychain.rawValue {
                        print ("The user has not signed in before or they have signed out.")
                    }
                    print(error.localizedDescription)
                }
                else {
                    self.authHelper.pageSwapper(identifier: "MainViewControllerIdentifier")
                }
            }
        }
    }
}
