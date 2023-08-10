//
//  ViewController.swift
//  FactoryPattern
//
//  Created by 3rabApp-oday on 10/08/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fanFactory = FansFactory()
        
        print(fanFactory.createFanFrom(type: .manCity).name)
        print(fanFactory.createFanFrom(type: .realMadrid).name)
    }


}

