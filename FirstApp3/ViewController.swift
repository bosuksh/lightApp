//
//  ViewController.swift
//  FirstApp3
//
//  Created by Myoung-Wan Koo on 2018. 3. 21..
//  Copyright © 2018년 Myoung-Wan Koo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    var flag = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = "White"
        buttonLabel.setTitle("OFF", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Cleaning
    
    @IBAction func doButtonTap(_ sender: UIButton) {
        
        print("Button Touched")
        updateUI()
        flag = !flag

    }
    func updateUI() {
        if flag == true {
            messageLabel.text = "Black"
            messageLabel.textColor = UIColor.white
            view.backgroundColor = UIColor.black
            buttonLabel.setTitle("ON", for: .normal
            )
        }
        else {
            messageLabel.text = "White"
            messageLabel.textColor = UIColor.black
            view.backgroundColor = UIColor.white
            buttonLabel.setTitle("OFF", for: .normal
            )
        }
    }

}

