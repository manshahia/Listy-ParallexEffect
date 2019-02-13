//
//  ViewController.swift
//  ParallexEffect
//
//  Created by Ravi Inder Manshahia on 13/02/19.
//  Copyright © 2019 Ravi Inder Manshahia. All rights reserved.
//

import UIKit

class ParaTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ParaCell
        {
            cell.customiseCell(withImage: imagesArray[indexPath.row], andLabel: titlesArray[indexPath.row])
            return cell
        }
        else
        {
            return UITableViewCell()
        }
    }



}

