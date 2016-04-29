//
//  ViewController.swift
//  ColorTapss
//
//  Created by Mc on 4/28/16.
//  Copyright © 2016 Good Rock Apps LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var maxTaps = 0
    var currentTaps = 0
    
    
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playbtn: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapLabel: UILabel!
    
    
    @IBAction func onCoinTap(sender: UIButton){
        
        
    currentTaps =  currentTaps + 1

    
    updatesTapsLAbel()
        
        if gameOver() {
            restartGame()
        }
        
    
    }
    @IBAction func onPlayButtonPressed(sender: UIButton){
        

        
        
    
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""{
            
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playbtn.hidden = true
            
            tapLabel.hidden = false
            tapButton.hidden = false
            
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updatesTapsLAbel()
            
        }
    
    }
    
    func updatesTapsLAbel() {
        tapLabel.text = "\(currentTaps) Taps"

    }
    
    func gameOver() -> Bool {
        if currentTaps == maxTaps {

        return true
        }else{
            return false
        }
    }
    func restartGame()  {
        maxTaps = 0
        howManyTapsTxt.text = ""

        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        playbtn.hidden = false
        
        tapLabel.hidden = true
        tapButton.hidden = true

    }
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

