//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Field Employee on 2/22/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var buttonView: UIButton!
    
    let redKey = "notificationRed"
    let greenKey = "notificationGreen"
    let yellowKey = "notificationYellow"
    let orangeKey = "notificationOrange"
    let blackKey = "notificationBlack"
    
    private func createObserver() {
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: redKey), object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: greenKey), object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: yellowKey), object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: orangeKey), object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(updateScreen(_:)), name: NSNotification.Name(rawValue: blackKey), object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func updateScreen(_ notification: NSNotification) {
      if let tag = notification.userInfo?["tag"] as? Int {
        labelView.isHidden = false
        labelView.textColor = .black
        switch tag {
        case 0:
          view.backgroundColor = .red
          labelView.text = "You've selected red"
        case 1:
          view.backgroundColor = .green
          labelView.text = "You've selected green"
        case 2:
          view.backgroundColor = .yellow
          labelView.text = "You've selected yellow"
        case 3:
          view.backgroundColor = .orange
          labelView.text = "You've selected orange"
        case 4:
          view.backgroundColor = .black
          labelView.textColor = .white
          labelView.text = "You've selected black"
        default:
          break
        }
      }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
createObserver()
        
    }

}

