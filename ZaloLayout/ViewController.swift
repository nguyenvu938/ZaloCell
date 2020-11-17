//
//  ViewController.swift
//  ZaloLayout
//
//  Created by NguyenVu on 15/11/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let datas = dataZalo()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ZaloCell", bundle: nil), forCellReuseIdentifier: "ZaloCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ZaloCell", for: indexPath) as! ZaloCell
        let dulieu = datas[indexPath.row]
        cell.avatarImageView.image = UIImage(named: "\(dulieu.imageName)")
        cell.nameLabel.text = dulieu.name
        cell.descriptionLabel.text = dulieu.description
        cell.timeLabel.text = dulieu.time
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let edit = UIContextualAction(style: .normal, title: "Edit") { (action, view, completion) in
            print("Edit")
        }
        
        let delete = UIContextualAction(style: .normal, title: "Delete") { (action, view, completion) in
            print("Delete")
        }
        
        edit.backgroundColor = .blue
        delete.backgroundColor = .red
        
        let swipe = UISwipeActionsConfiguration(actions: [edit, delete])
        return swipe
    }
}
