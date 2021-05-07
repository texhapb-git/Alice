//
//  ImageViewController.swift
//  Alice.App
//
//  Created by Максим Иванов on 06.05.2021.
//  Copyright © 2021 Denis Bystruev. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var name: String!
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = text
        imageView.image = UIImage(named: name)

    }
    
    @IBAction func userTapped(_ sender: UITapGestureRecognizer) {
        imageView.contentMode = imageView.contentMode == .scaleAspectFill ? .scaleAspectFit : .scaleAspectFill
    }
    
}
