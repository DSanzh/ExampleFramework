//
//  KTLabel.swift
//  ExampleCore
//
//  Created by Sanzhar on 6/29/18.
//  Copyright © 2018 Sanzhar. All rights reserved.
//

import UIKit

enum KTLabelType {
    case billingName
    case billingMoney
    case billingReplenish
    case offenUsedDate
    case offenUsedName
    case offenUsedMoney
    case searchTitle
    case empty
}

class KTLabel: UILabel {

    private lazy var labelType: KTLabelType = .empty

    private lazy var title = ""

    init(withFont font: UIFont, textColor color: UIColor) {
        super.init(frame: .zero)
        setupWith(font, color: color)
    }

    init(_ type: KTLabelType = .empty) {
        super.init(frame: .zero)
        self.labelType = type
        self.setupView()
    }
    init(withTitle title: String, type: KTLabelType = .empty) {
        super.init(frame: .zero)
        self.title = title
        self.labelType = type
        self.setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("KTLabelType required aDecoder+")
    }
}

extension KTLabel {
    private func setupView() {
        switch labelType {
        case .billingMoney:
            setupBillingMoney()
        case .billingName:
            setupBillingName()
        case .billingReplenish:
            setupBillingReplenish()
        case .offenUsedDate:
            setupOffenUsedDate()
        case .offenUsedName:
            setupOffenUsedName()
        case .offenUsedMoney:
            setupOffenUsedMoney()
        case .searchTitle:
            setupSearchTitle()
        case .empty:
            setupEmpty()
        }
    }
    private func setupBillingMoney() {
//        font = UIFont.lato(size: 34.widthProportion(), weight: .regular)
        textColor = .white
    }

    private func setupBillingName() {
//        font = UIFont.lato(size: 21.widthProportion(), weight: .light)
//        textColor = UIColor.FlatColor.Green.malachite
    }

    private func setupBillingReplenish() {
//        font = UIFont.lato(size: 15.widthProportion(), weight: .light)
        textColor = .white
    }

    private func setupOffenUsedDate() {
//        font = UIFont.lato(size: 13.widthProportion(), weight: .regular)
        textColor = .black
    }

    private func setupOffenUsedName() {
//        font = UIFont.lato(size: 17.widthProportion(), weight: .bold)
        textColor = .black
    }

    private func setupOffenUsedMoney() {
//        font = UIFont.lato(size: 17.widthProportion(), weight: .regular)
        textColor = .black
    }

    private func setupSearchTitle() {
//        font = UIFont.lato(size: 21.widthProportion(), weight: .regular)
        textColor = .black
    }

    private func setupEmpty() {

    }

    private func setupWith(_ font: UIFont, color: UIColor) {
        self.font = font
        textColor = color
    }
}
