//
//  NextViewController.swift
//  MachineTest2BooksTableView
//
//  Created by Felix-ITS016 on 26/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class NextViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var name = String()
    
     var selected1 = [String]()
    
    var sumArray = 0
    
    

    @IBOutlet weak var sumLabel: UILabel!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selected1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = selected1[indexPath.row]
        return cell
    }
    
    
    @IBOutlet weak var TablevView2: UITableView!
    
   
    @IBAction func showSumButton(_ sender: UIButton) {
       
        for item in selected1
        {
            sumArray += Int(item)!
        }

        sumLabel.text! = String(sumArray)
    }
    
    override func viewDidLoad() {
         print("inNext-\(selected1)")
       
        super.viewDidLoad()
        print(sumArray)
       // sumLabel.text! = sum

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
