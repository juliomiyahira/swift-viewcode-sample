//
//  HeaderGridBox.swift
//  SwiftViewCodeSample
//
//  Created by Julio Cezar Kenji Miyahira on 30/08/21.
//

import UIKit

final class HeaderGridBoxView: UIView {
    
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var rightStackViewContainer : UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fill
        view.spacing = 10
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var subTitleLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    lazy var itemStackViewContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 5
        return view
    }()
    
    lazy var itemLabelOne: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .purple
        return view
    }()
    
    lazy var itemLabelTwo: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .cyan
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

extension HeaderGridBoxView: CodeView {
    func buildViewHierachy() {
      addSubview(imageView)
      rightStackViewContainer.addArrangedSubview(titleLabel)
      rightStackViewContainer.addArrangedSubview(subTitleLabel)
      rightStackViewContainer.addArrangedSubview(itemStackViewContainer)
      itemStackViewContainer.addArrangedSubview(itemLabelOne)
      itemStackViewContainer.addArrangedSubview(itemLabelTwo)
      addSubview(rightStackViewContainer)
    }
    
    func setupConstraint() {
        imageView.snp.makeConstraints{make in
            make.top.left.equalToSuperview().offset(10.0)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        
        rightStackViewContainer.snp.makeConstraints{make in
            make.left.equalTo(imageView.snp.right).offset(10.0)
            make.top.equalTo(self.snp.top).offset(10.0)
            make.right.equalTo(self.snp.right).inset(10)
            make.height.equalTo(100)
        }
        
        titleLabel.snp.makeConstraints{make in
            make.height.equalTo(25.0)
        }

        subTitleLabel.snp.makeConstraints{make in
            make.height.equalTo(25.0)
        }
    }
    
    func setupAdditionalConfiguration() {
        
    }
}
