//
//  ViewController.swift
//  AlertXIB
//
//  Created by Alexander Kononok on 11/5/20.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var alertView: CustomAlertView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    alertView.layer.cornerRadius = 40
  }

}

