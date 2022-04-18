//
//  MoveTableViewController.swift
//  CellsDragAndDrop
//
//  Created by lsaac on 2022/4/18.
//

import UIKit

class MoveTableViewController: UITableViewController {

    var items = [
        "CollectionView",
        "TableView"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.tableFooterView = UIView()
        tableView.isEditing = true

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Arial", size: 18)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath)")
        print(indexPath.row)
        if(indexPath.row == 0){
            let vc = ViewController()
            self.present(vc, animated: true, completion: nil)
//            self.navigationController?.present(vc, animated: true, completion: nil)
//            self.navigationController?.pushViewController(vc, animated: true)
        
        }else{
            
        }
    }
    
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        items.swapAt(sourceIndexPath.row, destinationIndexPath.row)
//        let item = items.remove(at: sourceIndexPath.row)
//        items.insert(item, at: destinationIndexPath.row)
    }
    
  

 

}
