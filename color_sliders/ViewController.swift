//
//  ViewController.swift
//  color_sliders
//
//  Created by Anna Rogers on 6/28/16.
//  Copyright © 2016 Anna Rogers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateColor()
        
    }
    
    @IBAction func colorChange () {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if redSlider == nil {
            return
        }
        
        updateColor()
        
    }
    
    func updateColor () {
        
        let r: CGFloat = CGFloat(redSlider.value)
        let g: CGFloat = CGFloat(greenSlider.value)
        let b: CGFloat = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
    }

}

