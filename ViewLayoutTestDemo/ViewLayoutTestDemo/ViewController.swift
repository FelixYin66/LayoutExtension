//
//  ViewController.swift
//  ViewLayoutTestDemo
//
//  Created by Felix Yin on 2020/7/6.
//  Copyright © 2020 Felix Yin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var btn:UIButton = {
        let btn = UIButton();
        btn.setTitle("按钮", for: UIControl.State.normal);
        btn.setTitleColor(UIColor.red, for: UIControl.State.normal);
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 30);
        return btn;
    }();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(self.btn);
        self.btn.left = 100;
        self.btn.top = 100;
        self.btn.size = CGSize(width: 100, height: 30);
    }


}

