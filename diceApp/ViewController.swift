//
//  ViewController.swift
//  diceApp
//
//  Created by Yousef on 9/6/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    var dicenumber1  : Int = 0
    var dicenumber2  : Int = 0
   
    var diceArr  = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    func updateDice()
    {
        dicenumber1 = Int(arc4random_uniform(5))
        dicenumber2 = Int(arc4random_uniform(5))
        image1.image = UIImage(named:diceArr[dicenumber1])
        image2.image = UIImage(named:diceArr[dicenumber2])
    }
    @IBAction func roll(_ sender: Any) {
        updateDice()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDice()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

