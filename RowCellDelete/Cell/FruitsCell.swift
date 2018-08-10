//
//  FruitsCell.swift
//  RowCellDelete
//
//  Created by Rizki Ramdani on 10/08/18.
//  Copyright © 2018 Nusantara Beta Studio. All rights reserved.
//

import UIKit

class FruitsCell: UITableViewCell {
  
  static let identifier = "FruitsCell"
  static let height : CGFloat = 83
  
  @IBOutlet weak private var title: UILabel!
  
  var item : Fruit?{
    didSet{
      updateContent()
    }
  }

  func updateContent() {
    self.title.text = item?.title
  }

}
