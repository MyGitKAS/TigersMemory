//
//  BaseViewController.swift
//  TigersMemory
//
//  Created by Алексей Кухленков on 26.10.23.
//

import UIKit

class BaseViewController: UIViewController {
private let blackoutView = UIView()
    let backButtonImage = UIImage(named: "BackImageButton")
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(MainBackground(frame: UIScreen.main.bounds))
        blackoutView.backgroundColor = UIColor(white: 0, alpha: 0.3)
        blackoutView.frame = view.frame
        view.addSubview(blackoutView)
        
        let backButton = UIBarButtonItem(title: "", style: .plain, target: self, action: #selector(backButtonPressed))
        backButton.setBackgroundImage(UIImage(named: "BackImageButton"), for: .normal, barMetrics: .default)
        navigationItem.setLeftBarButton(backButton, animated: false)
    }
    
    
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
}
// blur
