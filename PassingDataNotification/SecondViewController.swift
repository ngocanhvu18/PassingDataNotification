//
//  SecondViewController.swift
//  PassingDataNotification
//
//  Created by Student on 5/30/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(doThisWhenNotifi), name: Notification.Name.init("notificationKey"), object: nil)
        
        // Do any additional setup after loading the view.
    }
    @objc func doThisWhenNotifi(){
        print("I have sent a spark")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sencondButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name("notificationKey"), object: self)
    secondTextField.text = " Notification Complete!"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
