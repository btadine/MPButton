//
//  MPButton.swift
//  MPButton
//
//  Created by Marcos Palacios on 09/04/2017.
//  Copyright © 2017 Marcos Palacios. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public final class MPButton<T: UIView>: UIControl {
  
  public override var isEnabled: Bool {
    didSet {
      (self.decoratedView as? UIControl)?.isEnabled = self.isEnabled
    }
  }
  
  public override var isHighlighted: Bool {
    didSet {
      (self.decoratedView as? UIControl)?.isHighlighted = self.isHighlighted
    }
  }
  
  public override var isSelected: Bool {
    didSet {
      (self.decoratedView as? UIControl)?.isSelected = self.isSelected
    }
  }
  
  public var hitbox: CGSize
  public let decoratedView: T
  
  public init(
    decoratedView: T,
    hitbox: CGSize? = nil)
  {
    self.decoratedView = decoratedView
    self.hitbox = hitbox ?? CGSize(width: 44, height: 44)
    
    super.init(frame: .zero)
    
    self.setupView()
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  fileprivate func setupView() {
    self.addSubview(self.decoratedView)
    self.decoratedView.clipsToBounds = true
    self.decoratedView.translatesAutoresizingMaskIntoConstraints = false
    let top = self.decoratedView.topAnchor.constraint(equalTo: self.topAnchor)
    let bottom = self.decoratedView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
    let left = self.decoratedView.leftAnchor.constraint(equalTo: self.leftAnchor)
    let right = self.decoratedView.rightAnchor.constraint(equalTo: self.rightAnchor)
    NSLayoutConstraint.activate([top, bottom, left, right])
  }
  
  override public func hitTest(
    _ point: CGPoint,
    with event: UIEvent?)
    -> UIView?
  {
    guard self.isEnabled && !self.isHidden && self.alpha != 0 else {
      return nil
    }
    
    let dx = max(0, self.hitbox.width - self.bounds.width)
    let dy = max(0, self.hitbox.height - self.bounds.height)
    
    let hitbox = self.bounds.insetBy(dx: -dx * 0.5, dy: -dy * 0.5)
    
    return hitbox.contains(point) ? self : nil
  }
  
}
