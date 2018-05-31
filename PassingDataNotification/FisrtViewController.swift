//
//  ViewController.swift
//  PassingDataNotification
//
//  Created by Student on 5/30/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit
 let myNotificationKey = "notificationKey"
class FisrtViewController: UIViewController {

    @IBOutlet weak var fisrtTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(doAfterNotifi), name: NSNotification.Name("notificationKey"), object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func doAfterNotifi(){
        print("I have been notified")
        fisrtTextField.text = " NA, I feel your spark"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

