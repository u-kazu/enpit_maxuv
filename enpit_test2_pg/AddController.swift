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
    
    var alertController: UIAlertController!
    
    @IBOutlet weak var BookTextField: UITextField!
    
//    private var tableView = UITableView()
    
    @IBAction func BookAdd(_ sender: Any) {
        if(BookTextField.text == ""){
            alert(title: "入力がありません", message:"入力してください")
        }else{
            Bookshelf.append(BookTextField.text!)
            BookTextField.text = ""
            UserDefaults.standard.set( Bookshelf, forKey: "Bookshelf" )
            
        }
    
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func alert(title:String, message:String) {
        alertController = UIAlertController(title: title,
                                   message: message,
                                   preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK",
                                       style: .default,
                                       handler: nil))
        present(alertController, animated: true)
    }
    
    var number: Int = 0
    
    @IBAction func test(_ sender: Any) {
        number += 1
//        numberLabel.text = String(number)
        if number == 5 {
            self.performSegue(withIdentifier: "testsegue", sender: self)
        }
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
