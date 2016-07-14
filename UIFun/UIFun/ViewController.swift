//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var paintBucket: UIImageView!
    @IBOutlet weak var firstPicker: UISegmentedControl!
    @IBOutlet weak var secondPicker: UISegmentedControl!
    var firstSegmentCurrentColor: Int = 0
    var secondSegmentCurrentColor: Int = 0
    var currentBackground : String = "Red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.backgroundColor = UIColor.redColor()
    }

    func mixColors(withFirst first: Int, second: Int){
        firstSegmentCurrentColor = firstPicker.selectedSegmentIndex
        secondSegmentCurrentColor = secondPicker.selectedSegmentIndex
        
        switch (firstSegmentCurrentColor, secondSegmentCurrentColor) {
        case (0,0):
            paintBucket.backgroundColor = UIColor.redColor()
            print("red")
        case (0,1),(1,0):
            paintBucket.backgroundColor = UIColor.orangeColor()
            print("orange")
        case (0,2), (2,0):
            paintBucket.backgroundColor = UIColor.purpleColor()
            print("purple")
        case (1,1):
            paintBucket.backgroundColor = UIColor.yellowColor()
            print("yellow")
        case (1,2),(2,1):
            paintBucket.backgroundColor = UIColor.greenColor()
            print("green")
        case (2,2):
            paintBucket.backgroundColor = UIColor.blueColor()
            print("blue")

        default:
            print("nope")
        }
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        print(secondPicker.selectedSegmentIndex, firstPicker.selectedSegmentIndex)
        mixColors(withFirst: firstSegmentCurrentColor, second: secondSegmentCurrentColor)
    }
}
