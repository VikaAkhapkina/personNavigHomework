//
//  ViewController.swift
//  To-doList
//
//  Created by Viktoriya on 6.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var toDoList: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
        
        // Do any additional setup after loading the view.
    }

    @IBAction func addButtenPlusPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let destination = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        navigationController?.pushViewController(destination, animated: true)
    }
    
}

