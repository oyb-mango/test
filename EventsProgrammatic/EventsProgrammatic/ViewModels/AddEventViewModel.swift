//
//  AddEventViewModel.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//

import Foundation

final class AddEventViewModel {
    var coordinator: AddEventCoordinator?

    func viewDidDisappear() {
        coordinator?.didFinishAddEvnet()
    }
}
