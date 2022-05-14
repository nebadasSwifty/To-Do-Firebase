//
//  TasksViewController.swift
//  To-Do-Firebase
//
//  Created by Кирилл on 14.05.2022.
//

import UIKit
import Firebase

class TasksViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        
    }
    @IBAction func signoutTapped(_ sender: UIBarButtonItem) {
        do {
           try Auth.auth().signOut()
        } catch {
            print(error.localizedDescription)
        }
        dismiss(animated: true)
    }
}

//MARK: - Table view delegate
extension TasksViewController: UITableViewDelegate {
    
}

//MARK: - Table view data source

extension TasksViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "This is cell number \(indexPath.row)"
        
        
        return cell
    }
    
    
}
