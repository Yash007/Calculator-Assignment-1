/*
 * Name: Yashkumar Sompura
 * Date: September 20, 2017
 * Student ID: 300967186
 * Description: Intermediate User Interaction Demo
 * Version: 0.5.2 - Reset and Clear button Added
 */

import UIKit

class ViewController: UIViewController {
    
    //Outlets declaration is here
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonPoint: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    @IBOutlet weak var operatorEquals: UIButton!
    @IBOutlet weak var operatorPlus: UIButton!
    @IBOutlet weak var operatorMinus: UIButton!
    @IBOutlet weak var operatorMultiplication: UIButton!
    @IBOutlet weak var operatorDivision: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var mainField: UILabel!
        
    var attachNumber : String!
    
    var firstNumbers:Double = 0
    var secondNumber:Double = 0
    var operationFlag:Bool = false
    var calculate = 0
    var decimal:Bool = false
    //Main Function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainField.text = String(0)
     
    }

    //Methods will here
    
    @IBAction func calculate(_ sender: UIButton) {
        if operationFlag == true    {
            mainField.text = String(sender.tag-1)
            secondNumber = Double(mainField.text!)!
            operationFlag = false
        }
        else    {
            attachNumber = String(sender.tag-1)
            
            if mainField.text == String(0)  {
                if  sender.tag == 15    {
                    mainField.text = "0."
                    decimal = true
                }
                else    {
                    mainField.text = attachNumber
                }
                
            }
            else    {
                
                if sender.tag == 15 {
                    if decimal == false {
                       mainField.text = mainField.text! + "."
                        decimal = true
                    }
                }
                else    {
                    mainField.text = mainField.text! + attachNumber
                }
                
            }
        }
    }
    
    @IBAction func clearField(_ sender: UIButton) {
        var stringCounter:Int
        stringCounter = (mainField.text?.characters.count)!;
        
        var finalString:String
        finalString = mainField.text!
        
        stringCounter = stringCounter - 1
        
        let index1 = finalString.index(finalString.endIndex, offsetBy: -1)
        let newUpdatedString = finalString.substring(to: index1)
        mainField.text = newUpdatedString
        
    }
    
    @IBAction func resetField(_ sender: UIButton) {
        mainField.text = String(0)
        decimal = false
        firstNumbers = 0
        secondNumber = 0
        operationFlag = false
        calculate = 0
    }
    
    @IBAction func operations(_ sender: UIButton) {
        firstNumbers = Double(mainField.text!)!
        decimal = false
        if sender.tag == 10    {        //Division Tag code
            mainField.text = "÷"
        }
        else if sender.tag == 11    {   //Mutliplication Tag code here
            mainField.text = "*"
        }
        else if sender.tag == 12    {   //Minus tag code here
            mainField.text = "-"
        }
        else if sender.tag == 13    {   //addition tag code here
            mainField.text = "+"
        }
        operationFlag = true
        calculate = sender.tag
    }
    
    @IBAction func equals(_ sender: UIButton) {
        secondNumber = Double(mainField.text!)!
        
        //Division Operation part
        if calculate == 10  {
            let temp = firstNumbers / secondNumber
            let isInteger = floor(temp) == temp
            
            if(isInteger == true)   {
                if(secondNumber == 0)   {
                    mainField.text = "ERROR !!"
                }
                else    {
                    mainField.text = String(Int(temp))
                }
            }
            else    {
                if(secondNumber == 0)   {
                    mainField.text = "ERROR !!"
                }
                else    {
                    mainField.text = String(firstNumbers / secondNumber)
                }
                
            }
           
        }
        //Multiplication Operation Part
        else if calculate == 11 {
            let temp = firstNumbers * secondNumber
            let isInteger = floor(temp) == temp
            
            if(isInteger == true)   {
                mainField.text = String(Int(temp))
            }
            else    {
                mainField.text = String(firstNumbers * secondNumber)
            }
        }
        //Substraction Operation Part
        else if calculate == 12 {
            let temp = firstNumbers - secondNumber
            let isInteger = floor(temp) == temp
            
            if(isInteger == true)   {
                mainField.text = String(Int(temp))
            }
            else    {
                mainField.text = String(firstNumbers - secondNumber)
            }

        }
        //Addition Operation Part
        else if calculate == 13 {
            let temp = firstNumbers + secondNumber
            let isInteger = floor(temp) == temp
            
            if(isInteger == true)   {
                mainField.text = String(Int(temp))
            }
            else    {
                mainField.text = String(firstNumbers + secondNumber)
            }

        }
    }
    

}

