//
//  LevelsViewController.swift
//  TigersMemory
//
//  Created by Алексей Кухленков on 3.11.23.
//

import UIKit
import SnapKit

class LevelsViewController: BaseViewController  {
    
    private let levelsView = LevelBox()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(levelsView)
        setConstraints()
        
        print("Hello")
    }
}


extension LevelsViewController {
    private func setConstraints() {
        levelsView.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
        
    }
}
