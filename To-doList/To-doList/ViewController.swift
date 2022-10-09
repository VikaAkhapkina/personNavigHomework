//
//  ViewController.swift
//  To-doList
//
//  Created by Viktoriya on 6.10.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, SecondViewControllerDelegate {
    
    var names = ["Vika"]
    
    func nameAdded(name: String) {
        names.append(name)
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        tableView.reloadData()
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        tableView.rowHeight = 60
        
        // Do any additional setup after loading the view.
    }

    @IBAction func addButtenPlusPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let destination = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
//        guard let secondViewController = destination as? SecondViewController else {return}
//        secondViewController.task = Task(title: tableView?, subtitle: String?, done: Bool?)
        destination.delegate = self
        navigationController?.pushViewController(destination, animated: true)
    }
    
    func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Basic")
    }
}
    


