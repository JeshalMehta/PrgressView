//
//  ViewController.swift
//  ProgressView
//
//  Created by Jeshal Mehta on 02/08/16.
//  Copyright © 2016 Jeshal Mehta. All rights reserved.
//

import UIKit
var p : Double = 20.0
class ViewController: UIViewController {

    var timer : NSTimer!
    
    @IBAction func fireTheEvent(sender: AnyObject) {
    
        timer = NSTimer.scheduledTimerWithTimeInterval(2, target: self, selector: #selector(ViewController.UpdateTheProgress), userInfo: nil, repeats: true)
        timer.fire()
        
        
        
       
    
    }
    @IBOutlet weak var ProgressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
       self.ProgressView.trackTintColor = UIColor.brownColor()
   self.ProgressView.progressTintColor = UIColor.blueColor()
    
    
    }
    
    func UpdateTheProgress()
    {
         self.ProgressView.progress = (Float)(p/100.0)
          p = p + 10.0
     }
    
    
    
    
    

}

