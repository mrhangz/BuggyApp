//
//  ThirdViewController.swift
//  BuggyApp
//
//  Created by Teerawat Vanasapdamrong on 28/6/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
  @IBOutlet weak var nameTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDetail", let name = sender as? String,
      let destinationVC = segue.destination as? WelcomeDetailViewController {
      destinationVC.name = name
    }
  }
}


extension WelcomeViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
    guard let name = textField.text, !name.isEmpty else { return }
    performSegue(withIdentifier: "showDetail", sender: name)
    textField.text = nil
  }
}
