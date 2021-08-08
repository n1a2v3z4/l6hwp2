//
//  ViewController.swift
//  l6hwp2
//
//  Created by Cергей Иванович on 7.08.21.
//

import UIKit

class ViewController: UIViewController {
    var boolButton = UIButton(type: UIButton.ButtonType.custom) as UIButton
    var firstView = UIView()
    var secondView = UIView()
    var thridView = UIView()
    var fourthView = UIView()
    var z = 0
    
    var randomColor: UIColor {
        return UIColor(red: .random(in: 0...1),
                       green: .random(in: 0...1),
                       blue: .random(in: 0...1),
                       alpha: 1.0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        boolButton = UIButton (frame:
                                CGRect (x: 100, y: 100, width: 100, height: 100)
        )
        
        boolButton.backgroundColor = randomColor
        boolButton.setTitle("Нажимай", for: .normal)
        boolButton.center = CGPoint(x: view.frame.maxX/2 , y: view.frame.maxY/2)
        view.addSubview(boolButton)
        boolButton.addTarget(self, action: #selector(random(sender:)), for: UIControl.Event.touchUpInside)
        view.backgroundColor = .cyan
    }
    
    
    @objc func random (sender: UIButton!) {
        
        if z == 0 {
            firstView = UIView (frame:
                                    CGRect (x: 0, y: 0, width: view.frame.maxX/2, height: view.frame.maxY/2)
            )
            firstView.backgroundColor = randomColor
            view.addSubview(firstView)
            
            secondView = UIView (frame:
                                    CGRect (x: 0, y: view.frame.maxY/2, width: view.frame.maxX/2, height: view.frame.maxY/2)
            )
            secondView.backgroundColor = randomColor
            
            view.addSubview(secondView)
            
            
            
            thridView = UIView (frame:
                                    CGRect (x: view.frame.maxX/2, y: 0, width: view.frame.maxX/2, height: view.frame.maxY/2)
            )
            thridView.backgroundColor = randomColor
            view.addSubview(thridView)
            
            
            fourthView = UIView (frame:
                                    CGRect (x: view.frame.maxX/2, y: view.frame.maxY/2, width: view.frame.maxX/2, height: view.frame.maxY/2)
            )
            fourthView.backgroundColor = randomColor
            view.addSubview(fourthView)
            
            view.bringSubviewToFront(boolButton)
            z += 1
        }
        else {
            secondView.isHidden = true
            firstView.isHidden = true
            thridView.isHidden = true
            fourthView.isHidden = true
            z -= 1
        }
    }
}
