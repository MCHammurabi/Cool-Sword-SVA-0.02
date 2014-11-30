//
//  ViewController.swift
//  Cool Sword SVA 0.02
//
//  Created by Victor Cook on 11/30/14.
//  Copyright (c) 2014 Victor Cook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var battleText: UITextView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func attackButton(sender: AnyObject) {
        var battleOutput = [""]
        battleOutput.append("You attacked.")
        println("You attacked!")
        let (diceTotal, diceRolled) = rollDice(20, 1)
        battleOutput.append("You rolled \(diceTotal).")
        let hitText = didHit(diceTotal)
        battleOutput.append("Your attack \(hitText)")
        battleText.text = battleTextLines(battleOutput)
                
    }


}

