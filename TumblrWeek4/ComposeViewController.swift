//
//  ComposeViewController.swift
//  TumblrWeek4
//
//  Created by Belay, Betelhem on 10/14/16.
//  Copyright © 2016 Belay, Betelhem. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    //@IBOutlet var compose: UIView!
    

    @IBOutlet weak var ButtonsView: UIView!
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
    
        func viewWillAppear(animated: Bool) {
            ButtonsView.center.y = view.frame.size.height
            for i in buttons {
                i.center.y = view.frame.size.height
                //i.alpha = 0
                
                
            }
            
    }
        override func viewDidAppear(_ animated: Bool) {
    
            UIView.animate(withDuration: 00.4) {
                self.photoImage.center.y = 210
            }
            
            UIView.animate(withDuration: 00.23, delay: 0.35, usingSpringWithDamping: 0.9, initialSpringVelocity: 0, options: [], animations: {
                self.chatImage.center.y = 350
                }, completion: nil)
            
            UIView.animate(withDuration: 00.3, delay: 0.4, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.quoteImage.center.y = 210
        
                }, completion: nil)
            
            UIView.animate(withDuration: 00.3, delay: 0.55, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.textImage.center.y = 210
                }, completion: nil)
            
            UIView.animate(withDuration: 00.3, delay: 0.6, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.linkImage.center.y = 350
                }, completion: nil)
            
            UIView.animate(withDuration: 00.3, delay: 0.8, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                self.videoImage.center.y = 350
                }, completion: nil)

    
    }
    
    
    
    
    @IBAction func didPressButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }

    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
