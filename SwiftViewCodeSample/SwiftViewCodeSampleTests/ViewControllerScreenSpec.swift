//
//  ViewControllerScreenSpec.swift
//  SwiftViewCodeSampleTests
//
//  Created by Julio Cezar Kenji Miyahira on 29/08/21.
//

import Quick
import Nimble
import Nimble_Snapshots

@testable import SwiftViewCodeSample

class ViewControllerScreenSpec: QuickSpec {
    
    override func spec() {
        describe("Teste UI View Controller Screen") {
            it("Testando View principal") {
                let frame = UIScreen.main.bounds
                let view = MainViewControllerScreen(frame: frame)
                expect(view) == recordSnapshot("ViewControllerScreen")
            }
        }
    }
}
