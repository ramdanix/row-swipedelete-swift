//
//  ViewController.swift
//  RowCellDelete
//
//  Created by Rizki Ramdani on 10/08/18.
//  Copyright © 2018 Nusantara Beta Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var table: UITableView!

  var data : [Fruit] = [Fruit(title: "pepaya"),
                        Fruit(title: "jambu"),
                        Fruit(title: "apel"),
                        Fruit(title: "salak"),
                        Fruit(title: "melon"),
                        Fruit(title: "semangka"),
                        Fruit(title: "mangga"),
                        Fruit(title: "lengkeng")]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configTableView()
  }
  
  func configTableView(){
    self.table.dataSource = self
    self.table.delegate = self
    self.table.register(UINib(nibName: FruitsCell.identifier, bundle: nil), forCellReuseIdentifier: FruitsCell.identifier)
    self.table.tableFooterView = UIView()
  }
  
}

extension ViewController : UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: FruitsCell.identifier, for: indexPath) as! FruitsCell
    cell.item = data[indexPath.row]
    return cell
  }
  
  
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete{
      self.data.remove(at: indexPath.row)
      tableView.deleteRows(at: [indexPath], with: .fade)
    }
  }

  /*
  func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    let delete = UITableViewRowAction(style: .destructive, title: "Delete", handler: { (rowAction, indexPath) in
      self.data.remove(at: indexPath.row)
      tableView.deleteRows(at: [indexPath], with: .fade)
    })
    
    return [delete]
  }
  */
  
}

extension ViewController : UITableViewDelegate{
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
  }
}



