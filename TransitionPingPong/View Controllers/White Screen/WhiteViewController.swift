//
//  WhiteViewController.swift
//  TransitionPingPong
//
//  Created by IJke Botman on 19/12/2017.
//  Copyright © 2017 IJke Botman. All rights reserved.
//

import UIKit

class WhiteViewController: ColoredViewController {
    init() {
        super.init(color: .white)
    }
    override func buttonWasTapped() {
        let vc = BlackViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
