//
//  ViewController.swift
//  Pleer
//
//  Created by Елизавета Щербакова on 23.02.2020.
//  Copyright © 2020 Sсherbakova Elizaveta Nikolaevna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var trackTitle = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: trackTitle)
        label.text = trackTitle
        label.numberOfLines = 0
        
    }

}
