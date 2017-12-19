//
//  BlackViewController.swift
//  TransitionPingPong
//
//  Created by IJke Botman on 19/12/2017.
//  Copyright © 2017 IJke Botman. All rights reserved.
//

import UIKit

class BlackViewController: ColoredViewController {
    init() {
        super.init(color: .black)
    }
    
    override func buttonWasTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) was not implemented.")
    }
}
