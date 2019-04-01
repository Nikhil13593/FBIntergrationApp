//
//  ViewController.swift
//  FBIntergrationApp
//
//  Created by Nikhil Patil on 01/04/19.
//  Copyright © 2019 Nikhil Patil. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
    // MARK: Extra use of FBSDKLoginButtonDelegate for getting that lable print of user LogIn & LogOut
class ViewController: UIViewController,FBSDKLoginButtonDelegate {
    //MARK: Here we only need to give outlet for Lable not for Button of Class FBSDKLogin but have to give Delegate to respective ViewController
    @IBOutlet weak var statusLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: This Func gives description about user action of log in and other actions on Lable we assign to print that Action...
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        if error != nil
        {
          statusLbl.text = error.localizedDescription
        }
        else if(result.isCancelled)
        {
            statusLbl.text = " User Cancelled the LogIn Process"
        }
        else
        {
            statusLbl.text = "User Logged in"
        }
    }
    // MARK: It Shows the action happen after clicked the Log Out Button..
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        statusLbl.text = "User Logged out"
    }
    
}

