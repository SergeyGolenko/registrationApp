//
//  PhotoViewController.swift
//  UserRegistration
//
//  Created by Сергей Голенко on 10.11.2020.
//  Copyright © 2020 Сергей Голенко. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       updatePhotoViewContrller()
    }
    
    
    
    func updatePhotoViewContrller(){
        
        //add color
         self.view.backgroundColor = UIColor(red: 0, green: 154, blue: 255, alpha: 1)
        //add title
        self.title = "Welcome"
        
     
        
        //addPictureView
        var pictureView = UIImageView(image: UIImage(named: "done"))
        pictureView.frame = CGRect(x: 0, y: 100, width:500, height:500)
        self.view.addSubview(pictureView)
        
        
        //addConstraite
        pictureView.translatesAutoresizingMaskIntoConstraints = true
        pictureView.center = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
          pictureView.autoresizingMask = [UIView.AutoresizingMask.flexibleLeftMargin, UIView.AutoresizingMask.flexibleRightMargin, UIView.AutoresizingMask.flexibleTopMargin, UIView.AutoresizingMask.flexibleBottomMargin]


        
        
        
   
        

   
       

        
       
        

      

        

        
        
        
        //pictureView.image = UIImage(named: "photo")
     //  self.view.addSubview(pictureView)
        
       
    }

    

}
