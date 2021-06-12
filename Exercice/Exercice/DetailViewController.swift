//
//  DetailViewController.swift
//  ClassQuote
//
//  Created by admin on 16/12/2020.
//  Copyright © 2020 OpenClassrooms. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet var ImageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedImage
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        if let imageToLoad = selectedImage{
            ImageView.image = UIImage(named: imageToLoad)
        }

        
    }
    

    @objc func shareTapped(){
        let vc = UIActivityViewController(activityItems:[ImageView.image!], applicationActivities:[])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }

}
