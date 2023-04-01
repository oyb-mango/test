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
        let modelNavigationController = UINavigationController()
        let addEventViewModel = AddEventViewModel()
        let addEventViewController = AddEventViewController(viewModel: addEventViewModel)
        modelNavigationController.setViewControllers([addEventViewController], animated: false)
        addEventViewModel.coordinator = self

        navigationController.present(modelNavigationController, animated: true)
    }
    
    func didFinishAddEvnet() {
        parentCoordinator?.childDidFinish(self)
    }
    
    func disappear() {
//        parentCoordinator?.childDidFinish(self)
    }
}
