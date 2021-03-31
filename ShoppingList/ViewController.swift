//
//  ViewController.swift
//  ShoppingList
//
//  Created by Robert D. Brown on 3/30/21.
//  Copyright © 2021 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textFIeld: UITextField!
    
    var items: [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        items.append("Bacon")
        items.append("Eggs")
        items.append("Milk")
    }

    @IBAction func whenButtonPressed(_ sender: UIBarButtonItem)
    {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    

}

