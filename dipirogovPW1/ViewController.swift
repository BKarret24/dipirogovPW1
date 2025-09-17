//
//  ViewController.swift
//  dipirogovPW1
//
//  Created by Даниил Пирогов on 9/16/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var views: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonWasPressed(_ sender: Any) {
        for view in views{
            view.backgroundColor = UIColor(
                displayP3Red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                alpha: 1
            )
        }
    }
    

}

