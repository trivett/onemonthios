//
//  UIViewController+Extensions.swift
//  Photog
//
//  Created by vincent on 5/16/15.
//  Copyright (c) 2015 vincent. All rights reserved.
//

import Foundation

extension UIViewController
    
{
    
    func showAlert(message: String)
        
    {
        
        self.showAlert("Uh Oh!", message: message)
        
    }
    
    func showAlert(title: String, message: String)
        
    {
        
        var alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)

        alertController.addAction(UIAlertAction(title: "Okay", style: .Default, handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
}