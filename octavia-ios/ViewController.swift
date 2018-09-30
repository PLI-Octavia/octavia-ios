//
//  ViewController.swift
//  octavia-ios
//
//  Created by Théo Battello on 9/30/18.
//  Copyright © 2018 Théo Battello. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

  @IBOutlet weak var ibWebView: WKWebView!
  
  private let webViewURL = "https://octavia-academy.com/teacher/"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    ibWebView.uiDelegate = self
    
    displayWebView()
  }
  
  func displayWebView() {
    guard let url = URL(string: webViewURL) else { return }
    
    let myRequest = URLRequest(url: url)
    
    ibWebView.load(myRequest)
  }
  
}
