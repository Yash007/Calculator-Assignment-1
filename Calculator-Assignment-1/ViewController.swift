/****************************************************************
 * Name: Yashkumar Sompura                                      *
 * Date: September 20, 2017                                     *
 * Student ID: 300967186                                        *
 * Description: Intermediate User Interaction Demo              *
 * Version: 0.8.3 - Splash Screen Added                         *
 ****************************************************************/

import UIKit

class ViewController: UIViewController {
    
    //Outlets declaration is here ---------------------------------------------------------------------
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
    @IBOutlet weak var plusMinusButton: UIButton!
    
    @IBOutlet weak var mainField: UILabel!
    
    
    //Variable that will required for calculations ----------------------------------------------------
    var attachNumber : String!
    var firstNumbers:Double = 0
    var secondNumber:Double = 0
    var operationFlag:Bool = false
    var calculate = 0
    var decimal:Bool = false
    var signFlag:Bool = false
    var percentageFlag:Bool = false
    
    //Main Function -----------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainField.text = String(0)
        plusMinusButton.isEnabled = false
    }

    //Methods will here--------------------------------------------------------------------------------
    @IBAction func calculate(_ sender: UIButton) {
        //code for enable and disable the plus and minus button
        if((mainField.text?.characters.count)! > 0)    {
            plusMinusButton.isEnabled = true
        }
        
        //code for maintain label font size
        if((mainField.text?.characters.count)! > 12)    {
            mainField.font = mainField.font.withSize(25)
        }
        else    {
            mainField.font = mainField.font.withSize(36)
        }
        
        
        //main code to add numbers and decimal point
        if operationFlag == true    {
            if(sender.tag != 17)   {
                mainField.text = String(sender.tag-1)
            }
            secondNumber = Double(mainField.text!)!
            operationFlag = false
            signFlag = false
        }
        else    {
            attachNumber = String(sender.tag-1)
            if mainField.text == String(0)  {
                if  sender.tag == 15    {
                    mainField.text = "0."
                    decimal = true
                }
                else    {
                    if  sender.tag != 17   {
                        mainField.text = attachNumber
                    }
                }
            }
            else    {
                if  sender.tag == 17   {
                    if signFlag == false    {
                        mainField.text = "-" + mainField.text!
                        signFlag = true
                    }
                    else    {
                        var finalString:String
                        finalString = mainField.text!
                        
                        
                        let index1 = finalString.index(finalString.endIndex, offsetBy: -1)
                        
                        finalString = finalString.substring(from: index1)
                        mainField.text = finalString
                        signFlag = false
                    }
                }
                if sender.tag == 15 {
                    if decimal == false {
                        mainField.text = mainField.text! + "."
                        decimal = true
                    }
                }
                else    {
                    if sender.tag != 17 {
                        mainField.text = mainField.text! + attachNumber
                    }
                }
            }
        }
    }
    
    //code will delete last character from label ------------------------------------------------------
    @IBAction func clearField(_ sender: UIButton) {
        let checker:Int = 0
        mainField.font = mainField.font.withSize(36)
        let erroChecker:String = "ERROR !!"
        if mainField.text == erroChecker   {
            mainField.text = String(0)
            decimal = false
            firstNumbers = 0
            secondNumber = 0
            operationFlag = false
            calculate = 0
            signFlag = false
            plusMinusButton.isEnabled = false
        }
        else if mainField.text != String(checker)  {
            var stringCounter:Int
            stringCounter = (mainField.text?.characters.count)!;
            if  stringCounter == 1  {
                mainField.text = "0"
            }
            else    {
                var finalString:String
                finalString = mainField.text!
                
                stringCounter = stringCounter - 1
                
                let index1 = finalString.index(finalString.endIndex, offsetBy: -1)
                let newUpdatedString = finalString.substring(to: index1)
                mainField.text = newUpdatedString
            }
        }
        else    {
            var stringCounter:Int
            stringCounter = (mainField.text?.characters.count)!;
            
            if  stringCounter == 1  {
                mainField.text = "0"
            }
            else    {
                mainField.text = "0"
            }
        }
    }
    
    //Method will reset the text field ----------------------------------------------------------------
    @IBAction func resetField(_ sender: UIButton) {
        mainField.text = String(0)
        decimal = false
        firstNumbers = 0
        secondNumber = 0
        operationFlag = false
        calculate = 0
        signFlag = false
        plusMinusButton.isEnabled = false
        mainField.font = mainField.font.withSize(36)
    }
    
    //method will store values and puts operations sign on label --------------
    @IBAction func operations(_ sender: UIButton) {
        firstNumbers = Double(mainField.text!)!
        decimal = false
        if sender.tag == 10    {        //Division Tag code
            mainField.text = "÷"
        }
        else if sender.tag == 11    {   //Mutliplication Tag code here
            mainField.text = "x"
        }
        else if sender.tag == 12    {   //Minus tag code here
            mainField.text = "-"
        }
        else if sender.tag == 13    {   //addition tag code here
            mainField.text = "+"
        }
        operationFlag = true
        percentageFlag = true
        signFlag = false
        calculate = sender.tag
        plusMinusButton.isEnabled = false
        mainField.font = mainField.font.withSize(36)
    }
    
    //Method will perform equals operation ------------------------------------------------------------
    @IBAction func equals(_ sender: UIButton) {
        if firstNumbers != 0    {
            if  mainField.text == "+" || mainField.text == "-" || mainField.text == "x" || mainField.text == "÷"    {
                secondNumber = firstNumbers;
            }
            else    {
                secondNumber = Double(mainField.text!)!
            }
            
            //Division Operation part------------------------------------------------------------------
            if calculate == 10  {
                let temp = firstNumbers / secondNumber
                let isInteger = floor(temp) == temp
                
                if(isInteger == true)   {
                    if(secondNumber == 0)   {
                        mainField.text = "ERROR !!"
                    }
                    else    {
                        mainField.text = String(Int64(temp))
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
            //Multiplication Operation Part------------------------------------------------------------
            else if calculate == 11 {
                let temp = firstNumbers * secondNumber
                let isInteger = floor(temp) == temp
                
                if(isInteger == true)   {
                    mainField.text = String(Int64(temp))
                }
                else    {
                    mainField.text = String(firstNumbers * secondNumber)
                }
            }
            //Substraction Operation Part--------------------------------------------------------------
            else if calculate == 12 {
                let temp = firstNumbers - secondNumber
                let isInteger = floor(temp) == temp
                
                if(isInteger == true)   {
                    mainField.text = String(Int64(temp))
                }
                else    {
                    mainField.text = String(firstNumbers - secondNumber)
                }
                
            }
            //Addition Operation Part------------------------------------------------------------------
            else if calculate == 13 {
                let temp = firstNumbers + secondNumber
                let isInteger = floor(temp) == temp
                
                if(isInteger == true)   {
                    mainField.text = String(Int64(temp))
                }
                else    {
                    mainField.text = String(firstNumbers + secondNumber)
                }
            }
        }
        if((mainField.text?.characters.count)! > 12)    {
            mainField.font = mainField.font.withSize(25)
        }
        else    {
            mainField.font = mainField.font.withSize(36)
        }

    }
    
    //code will calculate percentage ------------------------------------------------------------------
    @IBAction func calculatePercentage(_ sender: UIButton) {
        if(percentageFlag == true)  {
            var tempVariable:Double = 0
            tempVariable = Double(mainField.text!)!
            tempVariable = tempVariable / 100;
            tempVariable = firstNumbers * tempVariable
            mainField.text = String(tempVariable)
            percentageFlag = false
        }
        else    {
            var tempVariable:Double = 0
            tempVariable = Double(mainField.text!)!
            tempVariable = tempVariable / 100;
            mainField.text = String(tempVariable)
        }
    }
    
}

