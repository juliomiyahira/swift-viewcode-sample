//
//  GridBoxView.swift
//  SwiftViewCodeSample
//
//  Created by Julio Cezar Kenji Miyahira on 28/08/21.
//

import UIKit

final class GridBoxView: UIView {
    
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension GridBoxView: CodeView {
    
    func buildViewHierachy() {
        addSubview(imageView)
    }
    
    func setupConstraint() {
        imageView.snp.makeConstraints{make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.top.left.equalToSuperview()
        }
    }
    
    func setupAdditionalConfiguration() {
        
    }
}
