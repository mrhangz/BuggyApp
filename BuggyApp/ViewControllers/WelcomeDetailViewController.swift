//
//  WelcomeDetailViewController.swift
//  BuggyApp
//
//  Created by Sakarn Limnitikarn on 4/7/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import UIKit

class WelcomeDetailViewController: UIViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  var name: String = "Name is not set"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    nameLabel.text = name
  }
}
