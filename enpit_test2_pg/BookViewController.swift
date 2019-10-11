//
//  BookViewController.swift
//  enpit_maxuv
//
//  Created by uehara kazuma on 2019/10/04.
//  Copyright © 2019 uehara kazuma. All rights reserved.
//

import UIKit

class BookViewController: UIViewController{
    
    @IBOutlet weak var sampleTableView: UITableView!
    
    @IBAction func reload(_ sender: Any) {
//        print("hoge")
        tableView.reloadData()
        
    }
    
    
    
    private var tableView = UITableView()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.titleTextAttributes
            = [NSAttributedString.Key.font: UIFont(name: "Times New Roman", size: 50)!]
        

        // データを受け取って変数にぶち込む
        if UserDefaults.standard.object(forKey: "Bookshelf") != nil {
            Bookshelf = UserDefaults.standard.object(forKey: "Bookshelf") as! [String]
        }
        
        tableView.frame = view.bounds
        tableView.dataSource = self as? UITableViewDataSource
        view.addSubview(tableView)
        }
    
        

        // Do any additional setup after loading the view.


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension BookViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Bookshelf.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = Bookshelf[indexPath.row]
        return cell
    }
}
