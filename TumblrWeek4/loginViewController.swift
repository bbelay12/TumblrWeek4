//
//  loginViewController.swift
//  TumblrWeek4
//
//  Created by Belay, Betelhem on 10/17/16.
//  Copyright © 2016 Belay, Betelhem. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {

    
        })
    }
    
    
    

    @IBAction func didTap(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
        //sender.isSelected = !sender.isSelected
           }

  
}
