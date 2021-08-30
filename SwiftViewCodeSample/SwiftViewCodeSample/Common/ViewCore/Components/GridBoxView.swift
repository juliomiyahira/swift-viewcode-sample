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
    
    lazy var textContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8.0
        return view
    }()
    
    lazy var title : UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var subTitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .red
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
        textContainer.addArrangedSubview(title)
        textContainer.addArrangedSubview(subTitle)
        addSubview(textContainer)
        
    }
    
    func setupConstraint() {
        imageView.snp.makeConstraints{make in
            make.left.right.top.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.6)
        }
        
        textContainer.snp.makeConstraints{make in
            make.left.bottom.right.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(10)
        }
    }
    
    func setupAdditionalConfiguration() {
        
    }
}
