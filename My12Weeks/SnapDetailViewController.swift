//
//  SnapDetailViewController.swift
//  My12Weeks
//
//  Created by bro on 2022/05/30.
//

import UIKit
import SnapKit

class SnapDetailViewController: UIViewController {
    
    let activateButton = MainActivateButton()
    let moneyLabel = UILabel()
    let descriptionLabel = UILabel()
    
    let redView = UIView()
    let blueView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        addView()
        
        moneyLabel.backgroundColor = .yellow
        moneyLabel.text = "123,124124원"
        moneyLabel.textAlignment = .center
        
        moneyLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view)
            make.width.equalTo(300)
            make.height.equalTo(80)
        }
        
        activateButton.snp.makeConstraints { make in
            make.leadingMargin.equalTo(view)
            make.trailingMargin.equalTo(view)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.height.equalTo(view).multipliedBy(0.1)
        }
        
        
        redView.backgroundColor = .red
        redView.snp.makeConstraints { make in
//            make.top.equalTo(view)
//            make.leading.equalTo(view)
//            make.trailing.equalTo(view)
//            make.bottom.equalTo(view)
            
            make.edges.equalToSuperview().inset(100)
            
        }
        
        redView.snp.updateConstraints { make in
            make.bottom.equalTo(-500)
        }
        
        
        redView.addSubview(blueView)
        blueView.backgroundColor = .blue
        
        blueView.snp.makeConstraints { make in
            make.edges.equalToSuperview().offset(50)
        }
        
    }
    
    func addView() {
        [activateButton, moneyLabel, descriptionLabel, redView].forEach {
            view.addSubview($0)
        }
    }


}
