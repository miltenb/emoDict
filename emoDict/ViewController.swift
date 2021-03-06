//
//  ViewController.swift
//  emoDict
//
//  Created by Joost Miltenburg on 04/05/2017.
//  Copyright © 2017 JMSC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var coolTableView: UITableView!

    var emojis = ["👍","👻","😤","💩","🤡","🖖","😡","😰","👌🏻","🍺","🤠","🤓","😧","☠️","👀","☂️","🐹","🏏","⚽️"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        coolTableView.dataSource = self
        coolTableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

