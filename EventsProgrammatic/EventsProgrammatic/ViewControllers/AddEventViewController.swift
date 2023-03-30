//
//  AddEventViewController.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//

import UIKit

class AddEventViewController: UIViewController {
    var viewModel: AddEventViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.viewDidDisappear()
    }
}
