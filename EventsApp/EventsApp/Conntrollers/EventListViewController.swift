//
//  EventListViewController.swift
//  EventsApp
//
//  Created by OldYellowBricks on 3/28/23.
//

import UIKit

class EventListViewController: UIViewController {
    var viewModel: EventsListViewModel!
    
    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "EventListViewController") as! EventListViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .red
        setupViews()
    }

    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedAddEvent))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedAddEvent() {
        viewModel.tappedAddEvent()
    }
}
