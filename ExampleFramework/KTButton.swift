//
//  KTButton.swift
//  ExampleCore
//
//  Created by Sanzhar on 6/29/18.
//  Copyright © 2018 Sanzhar. All rights reserved.
//

import UIKit

import EasyPeasy

enum KTButtonType {
    case empty
    case underlined
    case yellowRounded
    case greenNavigationButton
    case indebtedness
    case pickerView
}

class KTButton: UIButton {

    private lazy var type: KTButtonType = .empty
    private var title: String?

    var isActive: Bool = false {
        didSet {
            setIconStatus(isActive)
        }
    }

    lazy var activeIconImage: UIImage? = UIImage()

    lazy var inActiveIconImage: UIImage? = UIImage()

    init(withTitle title: String? = nil, type: KTButtonType) {
        super.init(frame: .zero)
        self.type = type
        self.title = title
        setupView()
    }
    init(withImage image: UIImage?) {
        super.init(frame: .zero)
        setImage(image, for: .normal)
        imageView?.contentMode = .scaleAspectFit
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        if type == .yellowRounded {
            setupYellowRounded()
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension KTButton {
    private func setupView() {
        switch type {
        case .empty, .yellowRounded:
            setupEmpty()
        case .underlined:
            setupUnderlined()
        case .greenNavigationButton:
            setupGreenNavigationButton()
        case .indebtedness:
            setupIndebtedness()
        case .pickerView:
            setupPickerView()
        }
    }

    private func setupEmpty() {

    }

    private func setupUnderlined() {
        guard let title = title else {
            return
        }
        let attributedString = NSAttributedString(string: title,
                                                  attributes:
            [.foregroundColor: UIColor.gray,
             .underlineStyle: NSUnderlineStyle.styleSingle.rawValue]
        )
        setAttributedTitle(attributedString, for: .normal)
    }

    private func setupYellowRounded() {
        if let title = title, title != "" {
            setTitle(title, for: .normal)
        }
        setTitleColor(UIColor.black, for: .normal)
        backgroundColor = UIColor.yellow
        layer.cornerRadius = 8
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 20
        layer.shadowOpacity = 0.2
    }
    private func setupGreenNavigationButton() {
        setTitle(title, for: .normal)
        setTitleColor(UIColor.green, for: .normal)

        backgroundColor = .clear
    }
    private func setupIndebtedness() {
        setTitle(title, for: .normal)
        setTitleColor(.black, for: .normal)
    }
    private func setupPickerView() {
        setTitle(title, for: .normal)
        setTitleColor(.black, for: .normal)
        backgroundColor = UIColor.white.withAlphaComponent(0.5)
        layer.cornerRadius = 5
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.withAlphaComponent(0.5).cgColor
    }
}

extension KTButton {
    private func setIconStatus(_ status: Bool) {
        if status {
            setImage(activeIconImage, for: .normal)
        } else {
            setImage(inActiveIconImage, for: .normal)
        }
    }
}

