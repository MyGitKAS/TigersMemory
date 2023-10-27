//
//  ViewController.swift
//  TigersMemory
//
//  Created by Алексей Кухленков on 26.10.23.
//
import SnapKit
import UIKit

class ViewController: BaseViewController {
    
    private var activityIndicator =  CustomActivityIndicatorView(style: .large)
    private let mainTiger = UIImageView(image: UIImage(named: "MainTiger.png"))
    private let bottomGroup = UIImageView(image: UIImage(named: "BottomGroup.png"))
    private let textLogo = UIImageView(image: UIImage(named: "Logo.png"))
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mainTiger)
        view.addSubview(textLogo)
        view.addSubview(bottomGroup)
        view.addSubview(activityIndicator)
        
        setConstraints()
        startLoader()
        openNewViewControllerAfterDelay()
    }
    
    private func startLoader() {
        activityIndicator.color = .black
        activityIndicator.startAnimating()
    }
    
    func openNewViewControllerAfterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            let vc = MenuViewController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
            
        }
    }
}

extension ViewController {
    
    private func setConstraints() {
        textLogo.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(90)
            make.centerX.equalToSuperview()
        }
        bottomGroup.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
            make.width.equalTo(420)
        }
        
        activityIndicator.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(260)
        }
        
        mainTiger.snp.makeConstraints { make in
            make.centerX.equalToSuperview().inset(15)
            make.centerY.equalToSuperview().offset(120)
            make.height.equalTo(605)
            make.width.equalTo(410)
        }
        
    }
}


