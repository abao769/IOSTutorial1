//
//  HomeViewController.swift
//  MVVM
//
//  Created by Apple on 01/08/2021.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    var viewmodel = HomeViewModel()
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewmodel.musics.count
    }
        
    @objc func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
        
    @objc func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeCell
        
        let item = viewmodel.musics[indexPath.row]
        cell.nameLabel.text = item.name
        cell.artistLabel.text = item.artistName
        
        if item.thumbnailImage != nil {
            cell.avatarImageView.image = item.thumbnailImage
        } else {
            cell.avatarImageView.image = nil
            
            //downloader
            Networking.shared().downloadImage(url: item.artworkUrl100) { (image) in
                if let image = image {
                    cell.avatarImageView.image = image
                    item.thumbnailImage = image
                } else {
                    cell.avatarImageView.image = nil
                }
            }
        }
        return cell
    }
    
    override func setupUI() {
        super.setupUI()
        //title
        self.title = "Home"
        
        //tableview
        tableview.delegate = self
        tableview.dataSource = self
        
        let nib = UINib(nibName: "HomeCell", bundle: .main)
        tableview.register(nib, forCellReuseIdentifier: "cell")
        
        //navi
        let resetTabbarItem = UIBarButtonItem(image: UIImage(named: " "), style: .plain, target: self, action: #selector(loadAPI))
        self.navigationItem.rightBarButtonItem = resetTabbarItem
    }
    
    override func setupData() {
    }
        
    func updateUI() {
        tableview.reloadData()
    }
    
    func fetchData() {
        viewmodel.fetchData { (done, email, password) in
            if done {
                self.updateUI()
            } else {
                print("LỖI")
            }
        }
    }
    //MARK: - API
    @objc func loadAPI() {
        print("LOAD API")
        viewmodel.loadAPI { (done, msg) in
            if done {
                self.updateUI()
            } else {
                print("API ERROR: \(msg)")
            }
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
