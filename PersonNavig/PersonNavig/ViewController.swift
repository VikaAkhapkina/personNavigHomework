//
//  ViewController.swift
//  PersonNavig
//
//  Created by Viktoriya on 4.10.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
      


    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Username"
        surnameTextField.placeholder = "Surname"
        dateTextField.placeholder = "Date"
        nameTextField.font = .systemFont(ofSize: 25)
        surnameTextField.font = .systemFont(ofSize: 25)
        dateTextField.font = .systemFont(ofSize: 25)
        
        
    }

    @IBAction func tapGesture(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    
    @IBAction func saveButten(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        guard let secondViewController = destination as? SecondViewController else {return}
        secondViewController.text = nameTextField.text
        secondViewController.text = surnameTextField.text
        present(destination, animated: true)
    
        
    }
    
    
}

