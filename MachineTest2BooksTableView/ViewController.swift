//
//  ViewController.swift
//  MachineTest2BooksTableView
//
//  Created by Felix-ITS016 on 26/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var TableView: UITableView!
    
    let DiffBooksArray = ["A.P.J Abdul Kalam My Journey","Life is What You Make It","The Blue Umbrella","Once Upon An IAS Exam","Learning How to Fly: Life Lessons for the Youth"]
    let PriceofBooksArray = ["550","500","450","400","350"]
    var selected = [String]()
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
        return DiffBooksArray.count
        }
        else
        {
             return PriceofBooksArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.textLabel?.text = DiffBooksArray[indexPath.row]
         cell.detailTextLabel?.text = PriceofBooksArray[indexPath.row]
       // cell.textLabel?.text = selected[indexPath]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        print(cell!.detailTextLabel!.text!)
        if cell?.accessoryType == .checkmark
        {
            cell?.accessoryType = .none
            let index = selected.firstIndex(of: cell!.detailTextLabel!.text!)
            selected.remove(at: index!)
        }
        else
        {
            cell?.accessoryType = .checkmark
            selected.append(cell!.detailTextLabel!.text!)
        }
        print(selected)
    }
    
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        print(cell!.textLabel!.text!)
        let next = storyboard?.instantiateViewController(withIdentifier: "NextViewController")as! NextViewController
        //next.sumLabel = sum.text!
        navigationController?.pushViewController(next, animated:true )
    
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        
        let next = storyboard?.instantiateViewController(withIdentifier: "NextViewController")as! NextViewController
        next.selected1 = selected
        navigationController?.pushViewController(next, animated:true )
    }

    override func viewDidLoad()
    {
       // print("inNext-\(selected)")
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


