//
//  ViewController.swift
//  Click Counter
//
//  Created by Li Yin on 10/15/15.
//  Copyright © 2015 Li Yin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
      
        // add increment Button
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    
        //add decrement button
        let button2 = UIButton()
        button2.frame = CGRectMake(150, 300, 140, 60)
        button2.setTitle("Click to reduce", forState: .Normal)
        button2.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(button2)
        
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    
        //add button to toggle the background color
        let button3 = UIButton()
        button3.frame = CGRectMake(150, 350, 140, 60)
        button3.setTitle("Change Color", forState: .Normal)
        button3.setTitleColor(UIColor.greenColor(), forState: .Normal)
        self.view.addSubview(button3)
        button3.tag = 1
        button3.addTarget(self, action: "changeColor:", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    
    func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
    }
    
    func changeColor(sender: UIButton) {
        
        if (sender.tag == 1){
            self.view.backgroundColor = UIColor.yellowColor()
            sender.tag = 2
        }
        
        else {
            self.view.backgroundColor = UIColor.blueColor()
            sender.tag = 1
        }

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

