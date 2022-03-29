//
//  ViewController.swift
//  demo
//
//  Created by Tarun Bhagat on 25/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var arr = ["person1","person2","person3"]
    
//    var person: person[]
    
    var person: [person]?
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        addNewName(name: "abc")
        tableView.reloadData()
        
//        var arr = ["person1","person2","person3"]
        
        
    }
    
    func addNewName(name: String) {
        
        arr.append(name)
        
        
    }
    


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")as! TableViewCell
        
        cell.lbl1.text = arr[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(identifier: "VC2")
        
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}

struct person {
    
    let firstName: String
    let lastName: String
    
    
}

