//
//  ViewController.swift
//  Task2
//
//  Created by Farhan Salam on 14/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var footerLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    
    @IBOutlet weak var calcLabel: UILabel!
    
        var varNumber1 = 0
        var varNumber2 = 0
        var varNumberResult = 0
        
        var varOperator = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Earn Mesra points"
        numLabel.text = "Enter your mobile number"
        footerLabel.text = "By proceeding, you agree to our Terms and Conditions. Visit our websites to learn more:"
        calcLabel.text = ""
    }
    
    @IBAction func button1(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "1"
    }
    @IBAction func button2(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "2"
    }

    @IBAction func button3(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "3"
    }

    @IBAction func button4(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "4"
    }

    @IBAction func button5(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "5"
    }

    @IBAction func button6(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "6"
    }
    @IBAction func button7(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "7"
    }
    @IBAction func button8(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "8"
    }
    @IBAction func button9(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "9"
    }
    @IBAction func button0(_ sender: UIButton) {
        calcLabel.text = calcLabel.text! + "0"
    }
    @IBAction func buttonplus(_ sender: UIButton) {
        varOperator = "+"
                varNumber1 = Int(calcLabel.text!)!
        clearText()
    }
    @IBAction func buttonminus(_ sender: UIButton) {
        varOperator = "-"
        varNumber1 = Int(calcLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonequal(_ sender: UIButton) {
        varNumber2 = Int(calcLabel.text!)!
        
        switch varOperator {
                case "+":
                    varNumberResult = varNumber1+varNumber2
                    calcLabel.text = String(varNumberResult)
                case "-":
                    varNumberResult = varNumber1-varNumber2
                    calcLabel.text = String(varNumberResult)
                
                default:
                    calcLabel.text = "ERROR"
                    
                }
    }
    @IBAction func buttonclear(_ sender: UIButton) {
        clearText()
    }
    
    func clearText() {
            calcLabel.text = ""
        }



    
}
