//
//  ViewController.swift
//  PickAFruit
//
//  Created by sky on 29.05.16.
//  Copyright © 2016 sky. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    var fruits = ["Pick a Fruit", "Apples", "Oranges", "Lemons", "Limes", "Blueberries"]
    
    @IBOutlet var imageView: UIImageView!

    @IBOutlet var infoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "fruits.jpg")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    
        return fruits.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
            return fruits[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        let fruitSelected = fruits[row]
        
        switch (fruitSelected) {
        
            case "Apples":
                imageView.image = UIImage(named:"apples.jpg")
                infoLabel.text = "These fruits are Apples"
            
            case "Oranges":
                imageView.image = UIImage(named:"oranges.jpg")
                infoLabel.text = "These fruits are Oranges"
            
            case "Lemons":
                imageView.image = UIImage(named:"lemons.jpg")
                infoLabel.text = "These fruits are Lemons"
                
            case "Limes":
                imageView.image = UIImage(named:"limes.jpg")
                infoLabel.text = "These fruits are Limes"
                
            case "Blueberries":
                imageView.image = UIImage(named:"blueberries.jpg")
                infoLabel.text = "These fruits are Blueberries"
            
        default:
            imageView.image = UIImage(named:"fruits.jpg")
            infoLabel.text = "Please enjoy our Fruits"
        }//end of switch statm
        
    }//end of select row func

    
}

