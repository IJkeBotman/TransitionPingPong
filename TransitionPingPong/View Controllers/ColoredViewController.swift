//
//  ColoredViewController.swift
//  TransitionPingPong
//
//  Created by IJke Botman on 19/12/2017.
//  Copyright © 2017 IJke Botman. All rights reserved.
//

import UIKit

enum Color {
    case white
    case black
}

class ColoredViewController: UIViewController {
    let triggerButton = UIButton()
    let contentTextView = UITextView()
    
    let color: Color
    
    init(color: Color) {
        self.color = color
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color(for: color)
        contentTextView.isUserInteractionEnabled = false
        
        triggerButton.addTarget(self, action: #selector(buttonWasTapped), for: .touchUpInside)
        
        self.view.addSubview(contentTextView)
        self.view.addSubview(triggerButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        view.setNeedsLayout()
    }
    
    func color(for color: Color) -> UIColor {
        switch color {
        case .white:
            return .white
        case .black:
            return .black
        }
    }
    
    @objc func buttonWasTapped() {
        assertionFailure("Should be implement in subclasses.")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init Coder not implemented.")
    }
}
