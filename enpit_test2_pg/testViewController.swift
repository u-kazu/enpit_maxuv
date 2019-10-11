//
//  testViewController.swift
//  enpit_maxuv
//
//  Created by uehara kazuma on 2019/10/11.
//  Copyright © 2019 uehara kazuma. All rights reserved.
//

import UIKit

import SwiftyJSON


class testViewController: UIViewController {
    
    
    
    @IBOutlet weak var testlabel: UILabel!
    

    @IBAction func button(_ sender: Any) {
//        guard let url = URL(string: "xxxx") else { return }
//        let task = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
//
//
//        })
//        task.resume()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // ここにurlを追加してね
        let url = URL(string: "xxxx")
        
        URLSession.shared.dataTask(with: url!) {(data, responce, error) in
            guard let data = data else { return }
            do {
                let json = try? JSON(data: data)
//                let jsonData = json!["Post"][0]["name"]
                print(json!)
            } catch let jsonError{
                print("jsonError", jsonError)
            }
        }.resume()
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
