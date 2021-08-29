//
//  CodeView.swift
//  SwiftViewCodeSample
//
//  Created by Julio Cezar Kenji Miyahira on 28/08/21.
//

import Foundation
import SnapKit

// Lead anchor, magim a esquerda
// Trailing anchor, margin a direita
//direita e embaixo constraint negativo
// Template method

protocol CodeView {
    func buildViewHierachy()
    func setupConstraint()
    func setupAdditionalConfiguration()
    func setupView()
}


extension CodeView {
    func setupView() {
        buildViewHierachy()
        setupConstraint()
        setupAdditionalConfiguration()
    }
}
