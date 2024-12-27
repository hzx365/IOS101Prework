//
//  ViewController.swift
//  ZXPrework
//
//  Created by Ke Ma on 12/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let myButton = myButton else {
            print("Button is nil")
            return
        }

        myButton.layer.cornerRadius = 5
        myButton.layer.masksToBounds = true
    }
    
    // Function to generate a random color
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

    // IBAction connected from the button
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor

    }
}
