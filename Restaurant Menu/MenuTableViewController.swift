//
//  MenuTableViewController.swift
//  Restaurant Menu
//
//  Created by Rinalds Domanovs on 31/07/2019.
//  Copyright © 2019 Rinalds Domanovs. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    let menuController = MenuController()
    var menuItems = [MenuItem]()
    var category: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.capitalized
        menuController.fetchMenuItems(forCategory: category) { (menuItems) in
            if let menuItems = menuItems {
                self.updateUI(with: menuItems)
            }
        }
    }

    func updateUI(with menuItems: [MenuItem]) {
        DispatchQueue.main.async {
            self.menuItems = menuItems
            self.tableView.reloadData()
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCellIdentifier", for: indexPath)
        configure(cell, forItemAt: indexPath)
        return cell
    }

    func configure(_ cell: UITableViewCell, forItemAt indexPath: IndexPath) {
        let menuItem = menuItems[indexPath.row]
        cell.textLabel?.text = menuItem.name
        cell.detailTextLabel?.text = String(format: "$%.2f", menuItem.price)
    }
}
