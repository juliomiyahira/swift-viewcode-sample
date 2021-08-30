//
//  GridBoxSpec.swift
//  SwiftViewCodeSampleTests
//
//  Created by Julio Cezar Kenji Miyahira on 28/08/21.
//

import Quick
import Nimble
import Nimble_Snapshots

@testable import SwiftViewCodeSample

class GridBoxViewSpec: QuickSpec {
    
    override func spec() {
        describe("Teste UI"){
            it("expected look and feel") {
                let frame = CGRect(x: 0, y: 0, width: 240, height: 100 )
                let view = GridBoxView(frame: frame)
                expect(view) == recordSnapshot("GridBoxView")
            }
        }
    }
}

