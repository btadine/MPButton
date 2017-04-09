//
//  ViewController.swift
//  MPButton
//
//  Created by Marcos Palacios on 09/04/2017.
//  Copyright © 2017 Marcos Palacios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let injectedView = self.getInjectedView()
    let mpButton = self.getMPButton(decoratedView: injectedView)
    mpButton.addTarget(self, action: #selector(self.doSomething), for: .touchUpInside)
  }
  
  @objc fileprivate func doSomething() {
    print("Your code goes here")
  }
  
  fileprivate func getInjectedView()
    -> UIView
  {
    let injectedView = UIView()
    injectedView.layer.borderWidth = 1
    injectedView.layer.cornerRadius = 15
    
    let label = UILabel()
    label.text = "Button with complicated layout"
    
    let square = UIView()
    square.backgroundColor = .blue
    
    injectedView.addSubview(label)
    injectedView.addSubview(square)
    
    label.setContentCompressionResistancePriority(UILayoutPriorityDefaultHigh, for: .horizontal)
    
    label.translatesAutoresizingMaskIntoConstraints = false
    square.translatesAutoresizingMaskIntoConstraints = false
    
    let labelTop = label.topAnchor.constraint(equalTo: injectedView.topAnchor, constant: 5)
    let labelBottom = label.bottomAnchor.constraint(equalTo: injectedView.bottomAnchor, constant: -5)
    let labelRight = label.rightAnchor.constraint(equalTo: injectedView.rightAnchor, constant: -10)
    
    let squareTop = square.topAnchor.constraint(equalTo: injectedView.topAnchor, constant: 5)
    let squareBottom = square.bottomAnchor.constraint(equalTo: injectedView.bottomAnchor, constant: -5)
    let squareLeft = square.leftAnchor.constraint(equalTo: injectedView.leftAnchor, constant: 10)
    let squareRight = square.rightAnchor.constraint(equalTo: label.leftAnchor, constant: -10)
    
    let squareHeight = square.heightAnchor.constraint(equalToConstant: 20)
    let squareWidth = square.widthAnchor.constraint(equalToConstant: 20)
    
    NSLayoutConstraint.activate(
      [labelTop, labelBottom, labelRight, squareTop, squareBottom, squareLeft, squareRight, squareHeight, squareWidth])
    
    return injectedView
  }
  
  fileprivate func getMPButton(
    decoratedView: UIView)
    -> MPButton<UIView>
  {
    let mpButton = MPButton(decoratedView: decoratedView)
    self.view.addSubview(mpButton)

    mpButton.translatesAutoresizingMaskIntoConstraints = false
    let centerX = mpButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
    let centerY = mpButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
    NSLayoutConstraint.activate([centerX, centerY])
    
    return mpButton
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}
