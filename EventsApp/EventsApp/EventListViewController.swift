//
//  EventListViewController.swift
//  EventsApp
//
//  Created by OldYellowBricks on 3/28/23.
//

import UIKit

class EventListViewController: UIViewController {

    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "EventListViewController") as! EventListViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .red
        
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedRightBarButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "Event"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    @objc private func tappedRightBarButton() {
        print("tapped right bar button ----")
    }
}
