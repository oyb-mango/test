//
//  AddEventCoordinator.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//

import UIKit

final class AddEventCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    var parentCoordinator: EventListCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let addEventViewController = AddEventViewController()
        let addEventViewModel = AddEventViewModel()
        addEventViewController.viewModel = addEventViewModel
        addEventViewModel.coordinator = self

        navigationController.present(addEventViewController, animated: true)
    }
    
    func didFinishAddEvnet() {
        parentCoordinator?.childDidFinish(self)
    }
    
    deinit {
        print("add event coordinator deinit")
    }
}
