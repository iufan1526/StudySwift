//
//  ViewController.swift
//  Chapter3
//
//  Created by 김승태 on 2023/03/12.
//

import UIKit

class ViewController: UIViewController {
    
    var image: UIImage?
    var numImage = 1
    var maxImage = 6
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        image = UIImage(named: "\(numImage).png")
        imageView.image = image
        
    }

    @IBAction func prev(_ sender: UIButton) {
        if numImage > 1 {
            numImage -= 1
        }else {
            numImage = maxImage
        }
        
        image = UIImage(named: "\(numImage).png")
        imageView.image = image
        
        print("numImage : \(numImage)")
    }
    
    @IBAction func next(_ sender: UIButton) {
        if numImage >= maxImage{
            numImage = 1
        }else {
            numImage += 1
        }
        
        image = UIImage(named: "\(numImage).png")
        imageView.image = image
        
        print("numImage : \(numImage)")
    }
}

