//
//  SecondViewController.swift
//  NotificationCenter
//
//  Created by Field Employee on 2/22/21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
  
    
    let redKey = "notificationRed"
    let greenKey = "notificationGreen"
    let yellowKey = "notificationYellow"
    let orangeKey = "notificationOrange"
    let blackKey = "notificationBlack"
    
    @IBAction func colorDidTap(_ sender: UIButton) {
      switch sender.tag {
      case 0:
        NotificationCenter.default.post(name: Notification.Name(rawValue: redKey), object: nil, userInfo: ["tag": sender.tag])
      case 1:
        NotificationCenter.default.post(name: Notification.Name(rawValue: greenKey), object: nil, userInfo: ["tag": sender.tag])
      case 2:
        NotificationCenter.default.post(name: Notification.Name(rawValue: yellowKey), object: nil, userInfo: ["tag": sender.tag])
      case 3:
        NotificationCenter.default.post(name: Notification.Name(rawValue: orangeKey), object: nil, userInfo: ["tag": sender.tag])
      case 4:
        NotificationCenter.default.post(name: Notification.Name(rawValue: blackKey), object: nil, userInfo: ["tag": sender.tag])
      default:
        break
      }
      self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
