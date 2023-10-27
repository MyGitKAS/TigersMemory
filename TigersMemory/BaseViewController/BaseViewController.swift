//
//  BaseViewController.swift
//  TigersMemory
//
//  Created by Алексей Кухленков on 26.10.23.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(MainBackground(frame: UIScreen.main.bounds))
    }
}
