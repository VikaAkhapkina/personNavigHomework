//
//  SecondViewController.swift
//  To-doList
//
//  Created by Viktoriya on 7.10.22.
//

import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    func nameAdded(name: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var subtitleTextField: UITextField!
    
    weak var delegate: SecondViewControllerDelegate?
    
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        titleTextField.text = task?.title
        subtitleTextField.text = task?.subtitle
        

        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func saveButten(_ sender: Any) {
        guard let name = titleTextField.text, name.count > 0 else { return }
        delegate?.nameAdded(name: name)
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
