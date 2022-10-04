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
    
    var text: String?
    
    struct Person {
        var name: String
        var surname: String
        var date: Int
        
    }
    var text2 = Person(name: "Vika", surname: "Akhapkina", date: 31)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.backgroundColor = .systemGroupedBackground
        surnameLabel.backgroundColor = .systemGroupedBackground
        dateLabel.backgroundColor = .systemGroupedBackground
        nameLabel.text = text
        surnameLabel.text = text
        dateLabel.text = text
        
        

        // Do any additional setup after loading the view.
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
