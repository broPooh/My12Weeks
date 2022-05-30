//
//  DetailViewController.swift
//  My12Weeks
//
//  Created by bro on 2022/05/30.
//

import UIKit

class DetailViewController: UIViewController {
    
    let bannerView = BannerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        bannerView.frame = CGRect(x: 30, y: 100, width: UIScreen.main.bounds.width - 60, height: 120)
        view.addSubview(bannerView)

    }
    

}
