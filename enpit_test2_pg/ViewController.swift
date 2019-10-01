//
//  ViewController.swift
//  enpit_test2_pg
//
//  Created by uehara kazuma on 2019/09/25.
//  Copyright © 2019 uehara kazuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alertController: UIAlertController!
    
    @IBOutlet weak var inputText: UITextField!
    

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
    
    
    
    @IBAction func button(_ sender: UIButton) {
        if (inputText.text == "hoge"){
            alert(title: "Alert!!!",
                  message: "その本は購入済みです！")
        }else if(inputText.text == ""){
            alert(title: "入力がありません", message:"入力してください")
        }else{
            alert(title: "No Problem",
                  message: "新しい本でしゅ")
    }
    }
    
    
}

