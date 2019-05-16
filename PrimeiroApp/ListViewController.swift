//
//  ListViewController.swift
//  PrimeiroApp
//
//  Created by Anderson Moura de Oliveira on 15/05/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var lendings: [Lending] = [] {
        didSet {
                self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupValue()
    }
    
    private func setupValue() {
        lendings = LendingService.shared.lendings
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

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lendings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lendingCell", for: indexPath)
        let lending = lendings[indexPath.row]
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        cell.textLabel?.text = lending.name
        cell.detailTextLabel?.text = lending.object + " - " + dateFormatter.string(from: lending.date)
        return cell
    }
}

extension ListViewController: UITableViewDelegate {

}
