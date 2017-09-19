//
//  ViewController.swift
//  Calculator-Assignment-1
//
//  Created by YASH SOMPURA on 18/09/17.
//  Copyright © 2017 YASH SOMPURA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculationField: UITextView!
    
    
    @IBOutlet weak var numberButton0: UIButton!
    @IBOutlet weak var numberButtonPoint: UIButton!
    
    @IBOutlet weak var numberButton1: UIButton!
    @IBOutlet weak var numberButton2: UIButton!
    @IBOutlet weak var numberButton3: UIButton!
    @IBOutlet weak var numberButton4: UIButton!
    @IBOutlet weak var numberButton5: UIButton!
    @IBOutlet weak var numberButton6: UIButton!
    @IBOutlet weak var numberButton7: UIButton!
    @IBOutlet weak var numberButton8: UIButton!
    @IBOutlet weak var numberButton9: UIButton!
    
    
    @IBOutlet weak var operatorFieldDivide: UIButton!
    @IBOutlet weak var operatorFieldEquals: UIButton!
    @IBOutlet weak var operatorFieldAddition: UIButton!
    @IBOutlet weak var operatorFieldMinus: UIButton!
    @IBOutlet weak var operatorFieldMultiplication: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    //Main Function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //code for border of main text field
        self.calculationField.layer.borderColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha:1).cgColor
        
        self.calculationField.layer.borderWidth = CGFloat(Float(1.0))
        self.calculationField.layer.cornerRadius = CGFloat(Float(15.0))
        
        
        //design for number 0 button
        numberButton0.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        numberButton0.layer.borderWidth = 1
        numberButton0.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor
        numberButton0.layer.cornerRadius = 10
        numberButton0.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        
        //design for number 1 button
        numberButton1.layer.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor
        numberButton1.layer.borderWidth = 1
        numberButton1.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor
        numberButton1.layer.cornerRadius = 10
        numberButton1.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        //design for number 2 button
        numberButton2.layer.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton2.layer.borderWidth = 1
        numberButton2.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton2.layer.cornerRadius = 10
        numberButton2.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        
        //design for number 3 button
        numberButton3.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)

        numberButton3.layer.borderWidth = 1
        numberButton3.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton3.layer.cornerRadius = 10
        numberButton3.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        
        //design for number 4 button
        numberButton4.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)

        numberButton4.layer.borderWidth = 1
        numberButton4.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton4.layer.cornerRadius = 10
        numberButton4.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        
        //design for number 5 button
        numberButton5.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        numberButton5.layer.borderWidth = 1
        numberButton5.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton5.layer.cornerRadius = 10
        numberButton5.setTitleColor(UIColor.black, for: UIControlState.normal)

        //design for number 6 button
        numberButton6.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        numberButton6.layer.borderWidth = 1
        numberButton6.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton6.layer.cornerRadius = 10
        numberButton6.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        
        //design for number 7 button
        numberButton7.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        numberButton7.layer.borderWidth = 1
        numberButton7.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton7.layer.cornerRadius = 10
        numberButton7.setTitleColor(UIColor.black, for: UIControlState.normal)

       // design for number 8 button
        numberButton8.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        numberButton8.layer.borderWidth = 1
        numberButton8.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton8.layer.cornerRadius = 10
        numberButton8.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        
        //design for number 9 button
        numberButton9.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        numberButton9.layer.borderWidth = 1
        numberButton9.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButton9.layer.cornerRadius = 10
        numberButton9.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        
        //design for number Point button
        numberButtonPoint.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        numberButtonPoint.layer.borderWidth = 1
        numberButtonPoint.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        numberButtonPoint.layer.cornerRadius = 10
        numberButtonPoint.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        //design for equals operator
        operatorFieldEquals.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        operatorFieldEquals.layer.borderWidth = 1
        operatorFieldEquals.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        operatorFieldEquals.layer.cornerRadius = 10
        operatorFieldEquals.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        
        //design for Addition operator
        operatorFieldAddition.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        operatorFieldAddition.layer.borderWidth = 1
        operatorFieldAddition.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        operatorFieldAddition.layer.cornerRadius = 10
        operatorFieldAddition.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        //design for Multiplication operator
        operatorFieldMultiplication.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        operatorFieldMultiplication.layer.borderWidth = 1
        operatorFieldMultiplication.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        operatorFieldMultiplication.layer.cornerRadius = 10
        operatorFieldMultiplication.setTitleColor(UIColor.black, for: UIControlState.normal)
        
        //design for substraction operator
        operatorFieldMinus.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        operatorFieldMinus.layer.borderWidth = 1
        operatorFieldMinus.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor

        operatorFieldMinus.layer.cornerRadius = 10
        operatorFieldMinus.setTitleColor(UIColor.black, for: UIControlState.normal)

        //design for Divide operator
        operatorFieldDivide.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        operatorFieldDivide.layer.borderWidth = 1
        operatorFieldDivide.layer.borderColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1).cgColor
        operatorFieldDivide.layer.cornerRadius = 10
        operatorFieldDivide.setTitleColor(UIColor.black, for: UIControlState.normal)

        deleteButton.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        deleteButton.layer.cornerRadius = 10
        
        resetButton.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha:1)
        resetButton.layer.cornerRadius = 10


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

