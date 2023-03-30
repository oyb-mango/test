//
//  AddEventViewController.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//

import UIKit

class AddEventViewController: UIViewController {
    var viewModel: AddEventViewModel
    
//    private let tableView: UITableView = {
//        let tableView = UITableView()
//        tableView.backgroundColor = .lightGray
//        tableView.allowsSelection = true
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        return tableView
//    }()
    
    init(viewModel: AddEventViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
//        tableView.delegate = self
//        tableView.dataSource = self
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.viewDidDisappear()
    }
    
    private func setupUI() {
        view.backgroundColor = .blue
//        view.addSubview(tableView)
//        
//        NSLayoutConstraint.activate([
//            tableView.topAnchor.constraint(equalTo: view.topAnchor),
//            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
//        ])
    }
}

//extension AddEventViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
//
//
//}
