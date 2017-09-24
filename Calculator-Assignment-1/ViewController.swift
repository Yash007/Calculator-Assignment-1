/*
 * Name: Yashkumar Sompura
 * Date: September 20, 2017
 * Student ID: 300967186
 * Description: Intermediate User Interaction Demo
 * Version: 0.3 - Functions Clear, Reset Added
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
    
    
    //Main Function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainField.text = String(0)
     
    }

    //Methods will here
    
    @IBAction func calculate(_ sender: UIButton) {
        attachNumber = String(sender.tag-1)
        
        if mainField.text == String(0)  {
            mainField.text = attachNumber
        }
        else    {
            mainField.text = mainField.text! + attachNumber
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
    }
    

}

