//
//  CommunicationViewController.swift
//  Exercice
//
//  Created by admin on 16/12/2020.
//

import UIKit




class CommunicationViewController: UIViewController {
    class MonSingleton{
        static let shred = MonSingleton()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("lol")
        
        // Notification
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.notificationAction), name: Notification.Name("Noticication identifier"), object: nil)
        
        NotificationCenter.default.post(name: Notification.Name("Notification Identifier"), object: nil)
        

       
    }
    

    @objc func notificationAction(notification : NSNotification){
        print("Notification Action")
        
    }

}
