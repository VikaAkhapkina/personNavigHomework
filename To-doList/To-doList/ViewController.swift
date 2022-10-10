//
//  ViewController.swift
//  To-doList
//
//  Created by Viktoriya on 6.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    var names: [Task] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Basic")
        tableView.rowHeight = 60
    }
    
    @IBAction func addButtenPlusPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let destination = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
//        guard let secondViewController = destination as? SecondViewController else {return}
//        secondViewController.task = Task(title: tableView?, subtitle: String?, done: Bool?)
        destination.delegate = self
        navigationController?.pushViewController(destination, animated: true)
    }
    
    
}

extension ViewController: SecondViewControllerDelegate {
        func nameAdded(name: String) {
            names.append()
            tableView.reloadData()
        }
    }

extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Basic", for: indexPath)
            cell.textLabel?.text = names[indexPath.row]
            cell.accessoryType = .disclosureIndicator
            return cell
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return names.count
        }
    }
    
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        tableView.reloadData()
    }
}
    


