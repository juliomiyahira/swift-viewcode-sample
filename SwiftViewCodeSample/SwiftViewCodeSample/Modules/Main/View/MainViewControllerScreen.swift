//
//  ViewControllerScreen.swift
//  SwiftViewCodeSample
//
//  Created by Julio Cezar Kenji Miyahira on 28/08/21.
//

import Foundation
import UIKit

final class MainViewControllerScreen: UIView {
    
    lazy var button: UIButton = {
        var view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Fetch", for: .normal)
        return view
    }()
   
    lazy var gridContainer: UIStackView = {
       let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        return view
    }()
    
    var leftBox = GridBoxView()
    var rightBox =  GridBoxView()
    var headerBox = HeaderGridBoxView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init coder as not been implemented")
    }
}

extension MainViewControllerScreen: CodeView {
    
    func buildViewHierachy() {
        addSubview(headerBox)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
        addSubview(button)
    }
    
    func setupConstraint() {
        
        headerBox.snp.makeConstraints{make in
            make.top.top.equalToSuperview().offset(100)
            make.right.left.equalToSuperview()
            make.height.equalTo(190)
        }
        
        gridContainer.snp.makeConstraints{make in
            make.top.equalTo(headerBox.snp.bottom)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(100)
        }
        
        button.snp.makeConstraints{make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.bottom.equalTo(self).inset(15)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
}
