//
//  ViewController.swift
//  Two Players
//
//  Created by John Gallaugher on 9/19/17.
//  Copyright © 2017 Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    @IBOutlet weak var beginGameButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    var playersEntered = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beginGameButton.isHidden = true
    }

    @IBAction func doneKeyPressed(_ sender: UITextField) {
        
        if playersEntered == 0 {
            playerOneLabel.text = "Player 1: " + nameTextField.text!
            nameTextField.text = ""
            playersEntered += 1
            
        } else {
            playerTwoLabel.text = "Player 2: " + nameTextField.text!
            nameTextField.text = ""
            playersEntered += 1
            beginGameButton.isHidden = false
            nameTextField.isEnabled = false
        }
    }
}

