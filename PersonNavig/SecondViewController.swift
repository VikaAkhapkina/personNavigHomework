//
//  ViewController.swift
//  PersonNavig
//
//  Created by Viktoriya on 4.10.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        settings()
    }
    
    func settings() {
        nameLabel.backgroundColor = .systemGroupedBackground
        surnameLabel.backgroundColor = .systemGroupedBackground
        dateLabel.backgroundColor = .systemGroupedBackground
        nameLabel.text = person?.name
        surnameLabel.text = person?.surname
        dateLabel.text = person?.date
        nameLabel.font = .systemFont(ofSize: 25)
        surnameLabel.font = .systemFont(ofSize: 25)
        dateLabel.font = .systemFont(ofSize: 25)
        
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
