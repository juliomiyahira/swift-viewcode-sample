//
//  ViewControllerScreen.swift
//  SwiftViewCodeSample
//
//  Created by Julio Cezar Kenji Miyahira on 28/08/21.
//

import Foundation
import UIKit

final class ViewControllerScreen: UIView {
    
    lazy var button: UIButton = {
        var view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("Fetch", for: .normal)
        return view
    }()
    
    let gridBox = GridBoxView()
    
    func myMethod() {
        
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init coder as not been implemented")
    }
}

extension ViewControllerScreen: CodeView {
    
    func buildViewHierachy() {
        addSubview(button)
        addSubview(gridBox)
    }
    
    func setupConstraint() {
        button.snp.makeConstraints{make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.bottom.equalTo(self).inset(15)
        }
        
        gridBox.snp.makeConstraints{make in
            make.height.width.equalTo(200)
            make.center.equalToSuperview()
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
}
