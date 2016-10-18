//
//  TabBarViewController.swift
//  TumblrWeek4
//
//  Created by Belay, Betelhem on 10/14/16.
//  Copyright © 2016 Belay, Betelhem. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    
    @IBOutlet weak var contentView: UIView!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController:UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var main = UIStoryboard(name: "Main", bundle:nil)
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    @IBOutlet weak var exploreButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration:0.8, delay: 0.0,
                       options: [.autoreverse,.repeat], animations: { () -> Void in
                        self.exploreButton.transform = CGAffineTransform(translationX: 0, y: 10)
            }, completion: nil)
        //instantiate each ViewController
        homeViewController = main.instantiateViewController(withIdentifier: "HomeViewController")
        
        searchViewController = main.instantiateViewController(withIdentifier: "SearchViewController")
        
        //composeViewController = main.instantiateViewController(withIdentifier: "ComposeViewController")
        
        accountViewController = main.instantiateViewController(withIdentifier: "AccountViewController")
        
        trendingViewController = main.instantiateViewController(withIdentifier: "TrendingViewController")
        
        // contentView.contentSize = CGSize (w)
        // Add each ViewController to your viewControllers array
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        //Set the Initial Tab when the App Starts.
        //buttons[selectedIndex].isSelected = true
        // didPressTab(buttons[selectedIndex])
        
        
        
    }
    
    
    @IBAction func didTapHomeButton(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        
        homeViewController.view.frame = contentView.bounds
        contentView.addSubview(homeViewController.view)
    }
    
    
    @IBAction func didTapSearchButton(_ sender: UIButton) {
        //keep track of the previous button
        let previousIndex = selectedIndex
        self.exploreButton.alpha = 0

        
        //Set the selectedIndex to the tag value of which ever button was tapped
        selectedIndex = sender.tag
        //use your previousIndex value to access your previous button and set it to the non-selected state.
        //buttons[previousIndex].isSelected = false
        
        searchViewController.view.frame = contentView.bounds
        contentView.addSubview(searchViewController.view)
        //let previousVC = viewControllers[previousIndex]
        
    }
    
    
    @IBAction func didTapAccountButton(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        // buttons[previousIndex].isSelected = false
        // let previousVC = viewControllers[previousIndex]
        accountViewController.view.frame = contentView.bounds
        
        contentView.addSubview(accountViewController.view)
        
    }
    
    @IBAction func didTapTrendingButton(_ sender: UIButton) {
        let previousIndex = selectedIndex
        //buttons[previousIndex].isSelected = false
        
        //Set the selectedIndex to the tag value of which ever button was tapped
        selectedIndex = sender.tag
        //Use the previousIndex to access the previous ViewController from the viewControllers array.
        
        //let previousVC = viewControllers[previousIndex]
        
        trendingViewController.view.frame = contentView.bounds
        contentView.addSubview(trendingViewController.view)
    }
    
}
