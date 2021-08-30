//
//  MainViewController.swift
//  SwiftViewCodeSample
//
//  Created by Julio Cezar Kenji Miyahira on 28/08/21.
//

import UIKit

class MainViewController: UIViewController {
    
    let screen = MainViewControllerScreen()

    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
