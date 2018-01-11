//
//  ViewController.swift
//  ColdCall2
//
//  Created by Lisa Ryland on 1/10/18.
//  Copyright © 2018 Lisa Ryland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    var currentName = 0
    var nameArr = [
        "Uyanga", "Courtney", "Bryant", "Cody", "Ryota", "Jay", "Bryant", "Jimmy"
    ]
    
    @IBAction func coldCallButton(_ sender: UIButton) {
        // randomly generate names
        if currentName < nameArr.count - 1 {
            currentName = Int(arc4random_uniform(UInt32(nameArr.count - 1)) + 1)
            nameLabel.text = nameArr[currentName]
//            print(currentName)
        }
        else {
            currentName = 0
        }
        
        // randomly generate number from 1 to 5
        let randomNum = arc4random_uniform(5) + 1
        if randomNum == 1 || randomNum == 2 {
            numberLabel.text = String(randomNum)
            numberLabel.textColor = UIColor.red
        }
        else if randomNum == 3 || randomNum == 4 {
            numberLabel.text = String(randomNum)
            numberLabel.textColor = UIColor.orange
        }
        else if randomNum == 5 {
            numberLabel.text = String(randomNum)
            numberLabel.textColor = UIColor.green
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

