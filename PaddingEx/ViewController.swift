//
//  ViewController.swift
//  PaddingEx
//
//  Created by 김종권 on 2021/09/12.
//

import UIKit

class ViewController: UIViewController {

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.backgroundColor = .gray.withAlphaComponent(0.5)

        return stackView
    }()

    lazy var label: BasePaddingLabel = {
        let label = BasePaddingLabel(padding: UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16))
        label.text = "padding label"
        label.backgroundColor = .red.withAlphaComponent(0.5)

        return label
    }()

    lazy var label2: UILabel = {
        let label = UILabel()
        label.text = "none padding label1"
        label.backgroundColor = .green.withAlphaComponent(0.5)

        return label
    }()

    lazy var label3: UILabel = {
        let label = UILabel()
        label.text = "none padding label2"
        label.backgroundColor = .blue.withAlphaComponent(0.5)

        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)

        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])

    }
}
