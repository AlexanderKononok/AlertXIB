//
//  CustomAlertView.swift
//  AlertXIB
//
//  Created by Alexander Kononok on 11/5/20.
//

import UIKit

class CustomAlertView: UIView {

  @IBOutlet var contentView: UIView!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setup()
  }
  
  private func setup() {
    layer.cornerRadius = 1
    layer.masksToBounds = true
    
    Bundle.main.loadNibNamed(String(describing: CustomAlertView.self), owner: self, options: nil)
    
    self.addSubview(contentView)
    
    contentView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: contentView, attribute: .leading, multiplier: 1, constant: 0).isActive = true
    NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: contentView, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
    NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: contentView, attribute: .top, multiplier: 1, constant: 0).isActive = true
    NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: contentView, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
  }
}
