//
//  DetailViewController.swift
//  My12Weeks
//
//  Created by bro on 2022/05/30.
//

import UIKit

class DetailViewController: UIViewController {
    
    let titleLabel = UILabel()
    let captionLabel = UILabel()
    let activateButton = MainActivateButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //반복적으로 뷰를 등록하고 오토리사이즈 기능을 활용하기 위해 false를 주는 코드를 제일 앞쪽으로 뺴서 처리
        //등록을 먼저 해주지 않게 된다면 속성을 지정하려고 할때 에러가 발생한다.(없기 때문)
        //view.addSubview(captionLabel)
        //오토레이아웃의 속성을 덮어쓸 수 있도록 해주기 위해서 false값으로 변경을 해주어야 한다.
        //captionLabel.translatesAutoresizingMaskIntoConstraints = false
        [titleLabel, captionLabel, activateButton].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        
        view.backgroundColor = .white
        
        setTitleLabelConstraints()
        setCaptionLabelConstraints()
        setActicateButtonConstraints()
        
    }
    
    func setActicateButtonConstraints() {
        NSLayoutConstraint.activate([
            activateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activateButton.widthAnchor.constraint(equalToConstant: 300),
            activateButton.heightAnchor.constraint(equalToConstant: 100),
            activateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        
    }
    
    
    func setTitleLabelConstraints() {
        titleLabel.text = "관심있는 회사\n3개를 선택해주세요"
        titleLabel.backgroundColor = .lightGray
        titleLabel.font = .boldSystemFont(ofSize: 24)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        
        
        //NSLayoutConstraints 사용 주의점
        //NSLayoutConstraints를 지정하기 전에 먼저 뷰를 등록을 해주어야 한다.
        //등록을 먼저 해주지 않게 된다면 속성을 지정하려고 할때 에러가 발생한다.(없기 때문)
        //view.addSubview(titleLabel)
        
        //오토레이아웃의 속성을 덮어쓸 수 있도록 해주기 위해서 false값으로 변경을 해주어야 한다.
        //titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //autoLayout 이전의 코드
        //titleLabel.frame = CGRect(x: 100, y: 100, width: UIScreen.main.bounds.width - 200, height: 80)
        
        //NSLayoutConstraints
        let topConstraint = NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0)
        topConstraint.isActive = true
        
        NSLayoutConstraint(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 40).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -40).isActive = true
        NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 80).isActive = true
    }
    
    func setCaptionLabelConstraints() {
        captionLabel.text = "맞춤 정보를 알려드려요"
        captionLabel.backgroundColor = .lightGray
        captionLabel.font = .boldSystemFont(ofSize: 18)
        captionLabel.textAlignment = .center
        captionLabel.numberOfLines = 0
        
        
        //NSLayoutConstraints 사용 주의점
        //NSLayoutConstraints를 지정하기 전에 먼저 뷰를 등록을 해주어야 한다.
        //등록을 먼저 해주지 않게 된다면 속성을 지정하려고 할때 에러가 발생한다.(없기 때문)
        //view.addSubview(captionLabel)
        
        //오토레이아웃의 속성을 덮어쓸 수 있도록 해주기 위해서 false값으로 변경을 해주어야 한다.
        //captionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //autoLayout 이전의 코드
        //titleLabel.frame = CGRect(x: 100, y: 100, width: UIScreen.main.bounds.width - 200, height: 80)
        
        //NSLayoutConstraints
        let topConstraint = NSLayoutConstraint(item: captionLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 10)
        
        //루트 뷰의 가운데에 배치하고 싶을때?
        let centerX = NSLayoutConstraint(item: captionLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
    
        let width = NSLayoutConstraint(item: captionLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.7, constant: 0)
        
        let height = NSLayoutConstraint(item: captionLabel, attribute: .height, relatedBy: .equal, toItem: titleLabel, attribute: .height, multiplier: 0.5, constant: 0)
        
        view.addConstraints([topConstraint, centerX, width, height])

        
    }
    

}
