//
//  StartViewController.swift
//  Photog
//
//  Created by vincent on 4/5/15.
//  Copyright (c) 2015 vincent. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true;

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
         self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapSignIn(sender: AnyObject)
    {
        var viewController = AuthViewController(nibName:"AuthViewController", bundle:nil)
        viewController.authMode = AuthMode.SignIn
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    @IBAction func didTapSignUp(sender: AnyObject)
    {
        var viewController = AuthViewController(nibName:"AuthViewController", bundle:nil)
        viewController.authMode = AuthMode.SignUp
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
