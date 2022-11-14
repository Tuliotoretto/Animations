//
//  ViewController.swift
//  Animations
//
//  Created by Julian Garcia  on 13/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    let animation = LoaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let segmentedControl = UISegmentedControl(items: ["drinks", "running", "cat", "fish"])
        segmentedControl.frame = CGRect(x: 10, y: 40, width:self.view.bounds.width - 20, height: 30)
        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
        segmentedControl.addTarget(self, action: #selector(scValueChanged(_ :)), for: .valueChanged)
        self.view.addSubview(segmentedControl)
        
        
        
        animation.frame.size = CGSize(width: 600, height: 600)
        animation.center = self.view.center
        view.addSubview(animation)
        
        view.backgroundColor = .cyan
    }
    
    @objc
    func scValueChanged(_ sender: UISegmentedControl) {
        animation.setAnimation(index: sender.selectedSegmentIndex)
    }
    
}

