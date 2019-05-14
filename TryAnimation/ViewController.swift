//
//  ViewController.swift
//  TryAnimation
//
//  Created by Nanda Mochammad on 14/05/19.
//  Copyright © 2019 nandamochammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet var viewBackground: UIView!
    @IBOutlet weak var box: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        box.layer.cornerRadius = box.frame.width/2
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(boxTapped))
        
        self.box.addGestureRecognizer(tapGesture)

    }
    
    @objc func boxTapped(sender : UITapGestureRecognizer){
        
//        UIView #1
//        UIView.animate(withDuration: 0.5, delay: 0.1, options: .curveEaseOut, animations: {
//            self.move(view: self.box)
////            self.changeViewColor(view: self.box)
//        }) { (finished) in
//            print("Moved")
//        }
        
//        UIView #2
        UIView.animate(withDuration: 1) {
            self.move(view: self.box)
            self.changeViewColor(view: self.box)
            self.resize(view: self.box)
        }
        
//        UIView #3
//        UIView.animate(withDuration: 1, animations: {
//            self.move(view: self.box)
//        }) { (finished) in
//            print("Done")
//        }
        
//        UIView #4
//        UIView.animate(withDuration: 1, delay: 0.2, options: .curveEaseIn, animations: {
//            self.move(view: self.box)
//        }) { (finished) in
//            print("Done")
//        }
        
        
    }
    
    func move(view: UIView) {
        let x = CGFloat.random(in: 0 ... 374)
        let y = CGFloat.random(in: 44 ... 818)
        
        box.center.x = x
        box.center.y = y
    }
    
    func changeViewColor(view: UIView){
        view.backgroundColor = UIColor(displayP3Red: CGFloat(Float.random(in: 0...1)), green: CGFloat(Float.random(in: 0...1)), blue:
            CGFloat(Float.random(in: 0...1)), alpha: 1)
    }
    
    func resize (view: UIView){
        let size = CGFloat.random (in: 50 ... 300)
        view.frame = CGRect.init(x: self.box.center.x, y: self.box.center.y, width: size, height: size)
        box.layer.cornerRadius = box.frame.width/2
    }
    

    

}

