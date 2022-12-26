//
//  LoginViewController.swift
//  PodcastApp
//
//  Created by Haris Asrofi on 23/12/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var signUpButton :  UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showRegisterViewController(customValue: String = "SIGN UP") {
        let storyboard = UIStoryboard(name: "Auth", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "register") as! RegisterViewController
//        viewController.customValue = customValue
//
        navigationController?.pushViewController(viewController, animated: true)
    }

    @IBAction func signUpButtonTapped(_ sender: Any) {
        showRegisterViewController(customValue: "REGISTER")
    }
}
