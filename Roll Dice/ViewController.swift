//
//  ViewController.swift
//  Roll Dice
//
//  Created by Denis on 19/12/17.
//  Copyright © 2017 Denis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let numberOne = arc4random_uniform(6) + 1
        
        let numberTwo = arc4random_uniform(6) + 1
        
        label.text = "The sum is: \(numberOne + numberTwo)"
        
        leftImageView.image = UIImage(named: "Dice\(numberOne)")
        
        rightImageView.image = UIImage(named: "Dice\(numberTwo)")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

