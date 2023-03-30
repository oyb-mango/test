//
//  AppCoordinator.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//

import UIKit

protocol Coordinator: AnyObject {
    /// all coordinators are retained in this array so that make sure we don't delete coordinator immediately
    var childCoordinators: [Coordinator] { get }
    /// entry point for coordinator
    func start()
}

final class AppCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = [] // private set so nothing can alter this outside
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()

        let eventListCoordinator = EventListCoordinator(navigationController: navigationController)
        childCoordinators.append(eventListCoordinator)
        eventListCoordinator.start()

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
