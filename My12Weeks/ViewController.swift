//
//  ViewController.swift
//  My12Weeks
//
//  Created by bro on 2022/05/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var favoriteMenuView: SquareBoxView!
    
    let redView = UIView()
    let greenView = UIView()
    let blueView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        redView.backgroundColor = .red
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        
        redView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        greenView.frame = CGRect(x: 200, y: 200, width: 150, height: 150)
        blueView.frame = CGRect(x: 300, y: 300, width: 100, height: 100)
        
        greenView.addSubview(redView)
        view.addSubview(greenView)
        view.addSubview(blueView)
        
        favoriteMenuView.label.text = "즐겨찾기"
        favoriteMenuView.imageView.image = UIImage(systemName: "star")
    }


    @IBAction func presentButtonClicked(_ sender: UIButton) {
        
        present(DetailViewController(), animated: true, completion: nil)
    }
}

