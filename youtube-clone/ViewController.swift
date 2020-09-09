//
//  ViewController.swift
//  youtube-clone
//
//  Created by waheedCodes on 05/09/2020.
//  Copyright © 2020 waheedCodes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
        
    }


}

