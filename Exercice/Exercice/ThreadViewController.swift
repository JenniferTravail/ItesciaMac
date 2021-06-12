//
//  ThreadViewController.swift
//  Exercice
//
//  Created by admin on 15/12/2020.
//

import UIKit

class ThreadViewController: UIViewController {
    
    @IBOutlet var ImageViewOne : UIImageView!
    @IBOutlet var ImageViewtwo : UIImageView!
    @IBOutlet weak var View3: UIImageView!
    
    @IBOutlet var activityIndecatorView0: UIActivityIndicatorView!
    @IBOutlet var activityIndecatorView1: UIActivityIndicatorView!
    @IBOutlet var activityIndecatorView2: UIActivityIndicatorView!
    
    
    private let serialDispatchQueue = DispatchQueue(label: "Serial-Dispastch-queue")
    private let concurrent = DispatchQueue(label:"Conccurent-queue", attributes: .concurrent)
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let queue = DispatchQueue(label:"queue")
        
        queue.async {
            self.doAction()
        }
    }
    
    func doAction()  {
        self.view.backgroundColor = .red
        print("Lol")
    }
    
    @IBAction func dowloadSerial(_ sender:Any){
        self.dowload(using: serialDispatchQueue)
        
    }
    
    @IBAction func dowloadConcurrent(_ sender:Any){ // Les liés au bouton
        self.dowload(using: concurrent)
    }

    private func dowload(using dispatchQueue: DispatchQueue){
        
        //Réinitialiser image
        self.ImageViewOne.image = nil
        self.ImageViewtwo.image = nil
        self.View3.image = nil
        
        //Définir les url des images
        
       // let url0 = URL(string: ) // à partir du sting mettre l'url
        //let url1 URL(string: )
        
        // Afficher indicator
        // self.activityIndecatorView0.start() // les fairr trois fois pc on a 3
       /*
        dispatchQueue.async {
            [weak self] in   // Gestion de mémoire
            guard let url =  url0 else {return }
            
            guard let data = try? Data(contentsOf: url) else {return}
            let image = UIImage(data: data)
            
            DispatchQueue.main.async {
                self?.ImageViewOne.image = image
                self?.activityIndecatorView0.stopAnimating()
            }
            
        }
        
        dispatchQueue.async {
            [weak self] in   // Gestion de mémoire
            guard let url =  url1 else {return }
            
            guard let data = try? Data(contentsOf: url) else {return}
            let image = UIImage(data: data)
            
            DispatchQueue.main.async {
                self?.ImageViewtwo.image = image
                self?.activityIndecatorView2.stopAnimating()
            }
            
        }
 */
        
        
        
    }

}
