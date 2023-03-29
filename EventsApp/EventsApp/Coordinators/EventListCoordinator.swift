//
//  EventListCoordinator.swift
//  EventsApp
//
//  Created by OldYellowBricks on 3/28/23.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListController = EventListViewController.instantiate()
        let eventListViewModel = EventsListViewModel()
        eventListViewModel.coordinator = self
        eventListController.viewModel = eventListViewModel
        navigationController.setViewControllers([eventListController], animated: false)
    }
    
    func startAddEvent() {
        let addEventCoordinator = AddEventCoordinator(navigationController: navigationController)
        childCoordinators.append(addEventCoordinator)
        addEventCoordinator.start()
    }
}
