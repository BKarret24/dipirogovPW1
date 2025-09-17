//
//  ViewController.swift
//  dipirogovPW1
//
//  Created by Даниил Пирогов on 9/16/25.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var button: UIButton!
    @IBOutlet var views: [UIView]!
    
    // MARK: - Constants
    private let animeDur: TimeInterval = 3.14
    private let minCornerRad: Double = 0
    private let maxCornerRad: Double = 30
    private let minColorComp: Double = 0
    private let maxColorComp: Double = 1
    private let colorAlpha: Double = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // MARK: - button Animations
    @IBAction func buttonWasPressed(_ sender: Any) {
        button.isEnabled = false
        var colors = getUniqueColors()
        var corners = getUniqueCorners()
        
        
        UIView.animate(withDuration: animeDur, animations: {
            for view in self.views{
                view.backgroundColor = colors.removeFirst()
                view.layer.cornerRadius = corners.removeFirst()
            }}, completion: { [weak self] _ in
                self?.button.isEnabled = true
                })
        }
    
    // MARK: Random set methods
    func getUniqueColors() -> Set<UIColor> {
        var set = Set<UIColor>()
        
        while set.count < views.count {
            set.insert(UIColor(
                displayP3Red: .random(in: minColorComp...maxColorComp),
                green: .random(in: minColorComp...maxColorComp),
                blue: .random(in: minColorComp...maxColorComp),
                alpha: colorAlpha
            ))
        }
        
        return set
    }
    
    func getUniqueCorners() -> Set<Double> {
        var set = Set<Double>()
        while set.count < views.count {
            set.insert(Double.random(in: minCornerRad...maxCornerRad))
        }
        return set
    }


}

