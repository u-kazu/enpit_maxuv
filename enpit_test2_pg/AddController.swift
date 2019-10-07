//
//  AddController.swift
//  enpit_maxuv
//
//  Created by uehara kazuma on 2019/10/04.
//  Copyright © 2019 uehara kazuma. All rights reserved.
//

import UIKit
var Bookshelf = [String]()

class AddController: UIViewController {
    
    @IBOutlet weak var BookTextField: UITextField!
    
//    private var tableView = UITableView()
    
    @IBAction func BookAdd(_ sender: Any) {
        Bookshelf.append(BookTextField.text!)
        BookTextField.text = ""
        UserDefaults.standard.set( Bookshelf, forKey: "Bookshelf" )
        
//        tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
