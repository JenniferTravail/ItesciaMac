//
//  GestureViewController.swift
//  Exercice
//
//  Created by admin on 15/12/2020.
//

import UIKit

class GestureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tep
        /*
        let Interraction = UITapGestureRecognizer(target: self, action: #selector(didTap(sender:)))
        Interraction.numberOfTapsRequired = 2
        
        self.view.isUserInteractionEnabled = true
        self.view.addGestureRecognizer(Interraction)
         */
        
        // Pan
        
//        let InterractionPan = UIPanGestureRecognizer(target: self, action: #selector(didPan(sender:)))
        
        

        
        // Do any additional setup after loading the view.
    }
    
    
    @objc func didTap(sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print("tapped -x \(location.x) y: \(location.y)")
    }
    
    @objc func didPan(sender: UIPanGestureRecognizer){
        let location = sender.location(in: view)
        let velocity = sender.velocity(in: view)
        let translation = sender.translation(in: view)
        
        print("Location \(location)")
        print("Velocity \(velocity)")
        print("Translation \(translation)")
        
        if sender.state == .began{
            print("Gesture commence")
        }
        else if sender.state == .ended{
            print("Gesture end")
        }
    }
    
    @objc func didPinch(sender: UIPinchGestureRecognizer){
       // let scale = sender.scale
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

}

class ButtonArrondi: UIButton {
                    
}
