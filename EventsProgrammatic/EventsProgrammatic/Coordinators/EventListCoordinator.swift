//
//  EventListCoordinator.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListController = EventListViewController()
        let eventListViewModel = EventsListViewModel()
        eventListViewModel.coordinator = self
        eventListController.viewModel = eventListViewModel
        navigationController.setViewControllers([eventListController], animated: false)
    }
    
    func startAddEvent() {
        let addEventListCoordinator = AddEventCoordinator(navigationController: navigationController)
        childCoordinators.append(addEventListCoordinator)
        addEventListCoordinator.parentCoordinator = self
        addEventListCoordinator.start()
    }
    
    func childDidFinish(_ childCoordinator: Coordinator) {
        if let index = childCoordinators.firstIndex(where: { coordinator -> Bool in
            return childCoordinator === coordinator
        }) {
            childCoordinators.remove(at: index)
        }
    }
}
