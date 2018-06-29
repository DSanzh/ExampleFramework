//
//  NavigationBarView.swift
//  ExampleCore
//
//  Created by Sanzhar on 6/29/18.
//  Copyright © 2018 Sanzhar. All rights reserved.
//

import UIKit
import EasyPeasy

class NavigationBarView: UIView {
    lazy var titleLabel = KTLabel()
    
    lazy var backButton = KTButton(withImage: UIImage())//.then{

    lazy var rightButton = UIButton()

    init(withTitle title: String) {
        super.init(frame: .zero)
        rightButton.isHidden = true
        setupView(title)
        setupConstraints()
    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) in NavigationBarView has not been implemented")
    }
}

extension NavigationBarView {

    private func setupView(_ title: String) {
        backgroundColor = .white
        [backButton, titleLabel, rightButton].forEach{
            addSubview($0)
        }
        titleLabel.text = title
    }

    private func setupConstraints() {
        titleLabel.easy.layout([
            Bottom(12),
            CenterX()
            ])
        backButton.easy.layout([
            Left(20),
            CenterY().to(titleLabel),
            Width(16),
            Height(28)
            ])
        rightButton.easy.layout([
            Right(15),
            CenterY().to(titleLabel),
            Height(25),
            Width(25)
            ])
    }

    @objc private func returnViewController() {
        print("returnViewController")
        if let viewController = self.window?.rootViewController {
            viewController.navigationController?.popViewController(animated: true)
            if let nav = viewController.navigationController {
                nav.popViewController(animated: true)
            } else {
                viewController.dismiss(animated: true, completion: nil)
            }
        }
    }
}
