//
//  ViewController.swift
//  ColinHrzichHW0
//
//  Created by Tara Hrzich on 8/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstTextBox: UITextField!
    @IBOutlet weak var LastTextBox: UITextField!
    @IBOutlet weak var SchoolTextBox: UITextField!
    @IBOutlet weak var YearSelect: UISegmentedControl!
    
    @IBOutlet weak var PetsLabel: UILabel!
    @IBOutlet weak var MorePetsStepper: UIStepper!
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    @IBAction func MorePetsTapped(_ sender: UIStepper) {
        PetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func IntroduceTapped(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
                let year = YearSelect.titleForSegment(at: YearSelect.selectedSegmentIndex)
                // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
                let introduction = "Hi! My name is \(FirstTextBox.text!) \(LastTextBox.text!) and I am attending \(SchoolTextBox.text!). I am currently in my \(year!) year and I own \(PetsLabel.text!) pets. It is \(MorePetsSwitch.isOn) that I want more pets."
        // Creates the alert where we pass in our message, which our introduction.
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

