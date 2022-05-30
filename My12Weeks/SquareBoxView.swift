//
//  SquareBoxView.swift
//  My12Weeks
//
//  Created by bro on 2022/05/29.
//

import UIKit

class SquareBoxView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        loadView()
        loadUI()
        
    }
    
    func loadView() {
        
        //이 방법으로도 XIB파일을 인스턴스로 만들어서 가져올 수 있다.
        //
        //let view2 = Bundle.main.loadNibNamed("SquareBoxView", owner: self, options: nil)?.first as! UIView
        
        //XIB파일을 인스턴스로 만들어서 가져오는 과정
        //훨씬 많이 사용 되는듯 하다.
        let view = UINib(nibName: "SquareBoxView", bundle: nil).instantiate(withOwner: self, options: nil).first as! UIView
        //인스턴스화한 뷰를 storyboard에 추가
        view.frame = bounds
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        self.addSubview(view)
    }
    
    func loadUI() {
        label.font = .boldSystemFont(ofSize: 13)
        label.text = "마이페이지"
        label.textAlignment = .center
        imageView.image = UIImage(systemName: "star.fill")
        imageView.tintColor = .black
    }
    
    
}
