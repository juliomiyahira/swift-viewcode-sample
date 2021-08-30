//
//  HeaderGridBoxSpec.swift
//  SwiftViewCodeSampleTests
//
//  Created by Julio Cezar Kenji Miyahira on 30/08/21.
//

import Quick
import Nimble
import Nimble_Snapshots

@testable import SwiftViewCodeSample

class HeaderGridBoxSpec: QuickSpec {
    override func spec() {
        describe("Teste Header gridbox") {
            it("Teste") {
                let frame = CGRect(x: 0, y: 0, width: 300, height: 190)
                let view = HeaderGridBoxView(frame: frame)
                expect(view) == recordSnapshot("HeaderGridBox")
            }
        }
    }
}
