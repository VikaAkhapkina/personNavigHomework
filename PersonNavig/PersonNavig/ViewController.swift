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
      
    let datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        nameTextField.placeholder = "Username"
        surnameTextField.placeholder = "Surname"
        dateTextField.placeholder = "Date"
        nameTextField.font = .systemFont(ofSize: 25)
        surnameTextField.font = .systemFont(ofSize: 25)
        dateTextField.font = .systemFont(ofSize: 25)
        createDatepicker()
    }
    
    @IBAction func tapGesture(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func saveButten(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        guard let secondViewController = destination as? SecondViewController else {return}
        secondViewController.person = Person(name: nameTextField.text, surname: surnameTextField.text, date: dateTextField.text)
        navigationController?.pushViewController(destination, animated: true)
    }
    
    func createToolbar() -> UIToolbar {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let doneButten = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([doneButten], animated: true)
        return toolbar
    }
    
    func createDatepicker() {
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        dateTextField.inputView = datePicker
        dateTextField.inputAccessoryView = createToolbar()
    }
    
    @objc func donePressed() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        self.dateTextField.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
}

