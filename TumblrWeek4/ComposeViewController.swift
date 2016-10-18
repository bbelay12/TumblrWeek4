//
//  ComposeViewController.swift
//  TumblrWeek4
//
//  Created by Belay, Betelhem on 10/14/16.
//  Copyright © 2016 Belay, Betelhem. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet var compose: UIView!
    

   
    @IBOutlet weak var textImage: UIButton!
    @IBOutlet weak var photoImage: UIButton!
    @IBOutlet weak var quoteImage: UIButton!
    @IBOutlet weak var linkImage: UIButton!
    @IBOutlet weak var chatImage: UIButton!
    @IBOutlet weak var videoImage: UIButton!
    @IBOutlet weak var nevermindButton: UIImageView!
    
    var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         buttons = [textImage, photoImage, quoteImage, linkImage,  chatImage,  videoImage]
        
     //var fadeTransition: FadeTransition!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
        override func viewWillAppear(_ animated: Bool) {
            compose.center.y = view.frame.size.height
            for i in buttons {
                i.center.y = view.frame.size.height
                i.alpha = 0
                
                
            }
            
    }
        override func viewDidAppear(_ animated: Bool) {
            
            UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
                self.photoImage.center.y = 210
                self.photoImage.alpha = 1
                }, completion: nil)

    
//            UIView.animate(withDuration: 00.4) {
//                self.photoImage.center.y = 210
//                 self.chatImage.alpha = 1
//            }
//            
            UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
                self.chatImage.center.y = 350
                self.chatImage.alpha = 1
                }, completion: nil)
            
            UIView.animate(withDuration: 00.3, delay: 0.4, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.quoteImage.center.y = 210
                
                self.quoteImage.alpha = 1
                }, completion: nil)
            
            UIView.animate(withDuration: 00.3, delay: 0.55, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.textImage.center.y = 210
               self.textImage.alpha = 1
                }, completion: nil)
            
            UIView.animate(withDuration: 00.3, delay: 0.6, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.linkImage.center.y = 350
                self.linkImage.alpha = 1
                }, completion: nil)
            
            UIView.animate(withDuration: 00.3, delay: 0.8, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.videoImage.center.y = 350
                self.videoImage.alpha = 1
                }, completion: nil)

    
    }
    
    
    
    
    @IBAction func didPressButton(_ sender: UIButton) {
        
        UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
            self.chatImage.center.y = -310
            }, completion:{(Bool) in
                self.dismiss(animated: true, completion: nil)
                self.chatImage.isHidden=true
        
        
        })
            UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
                self.quoteImage.center.y = -350
                }, completion:{(Bool) in
                    self.dismiss(animated: true, completion: nil)
                    self.quoteImage.isHidden=true
        
        })
        
        UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
            self.photoImage.center.y = -350
            }, completion:{(Bool) in
                self.dismiss(animated: true, completion: nil)
                self.photoImage.isHidden=true
            })
        
        UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
            self.textImage.center.y = -350
            }, completion:{(Bool) in
                self.dismiss(animated: true, completion: nil)
                self.textImage.isHidden=true
        })
    
        UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
            self.linkImage.center.y = -350
            }, completion:{(Bool) in
                self.dismiss(animated: true, completion: nil)
                self.linkImage.isHidden=true
        })
        
        UIView.animate(withDuration: 00.4, delay: 0.4, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
            self.videoImage.center.y = -350
            }, completion:{(Bool) in
                self.dismiss(animated: true, completion: nil)
                self.videoImage.isHidden=true
        })
    
    }

}
