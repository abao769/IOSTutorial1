//
//  ViewController.swift
//  TableView1
//
//  Created by Apple on 31/07/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeCell
        //cell.textLabel?.text = names[indexPath.section][indexPath.row]
        //let label = UILabel(frame: CGRect(x: 20, y: 30, width: 100, height: 20))
        //cell.nameLabel.text = names[indexPath.section][indexPath.row]
        //cell.SubTitleLabel.text = "Sub title"
        let user = users[indexPath.row]
        cell.nameLabel.text = user.name
        cell.SubTitleLabel.text = user.getSubTitle()
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected cell: \(names[indexPath.section][indexPath.row])")
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "man2") as! DetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    var titles: [String] = ["Phương Hướng", "Con Giáp"]
    
    
    var users: [User] = []

    
    var names: [[String]] = [
        ["Thiên", "Địa", "Đông", "Tây", "Nam", "Bắc"],
        ["Tý", "Sửu", "Dần", "Mão", "Thìn", "Tị", "Ngọ", "Mùi", "Thân", "Dậu", "Tuất", "Hợi"]
    ]
    
    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        
        myTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        myTable.delegate = self
        myTable.dataSource = self
        users = getUser()
        
        let nib = UINib(nibName: "HomeCell", bundle: .main)
    
        myTable.register(nib, forCellReuseIdentifier: "cell")

    }


}

