//
//  AddEventViewModel.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//

import UIKit

final class AddEventViewModel {
    var onUpdate: () -> Void = {}
    
    enum Cell {
        case titleSubtitle(TitleSubtitleCellViewModel)
        case titleImage
    }
    
    private(set) var cells: [AddEventViewModel.Cell] = []
    var coordinator: AddEventCoordinator?

    func viewDidLoad() {
        cells = [
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Name", subtitle: "", placeholder: "Add a name")),
            .titleSubtitle(TitleSubtitleCellViewModel(title: "Date  ", subtitle: "", placeholder: "Select a date"))
        ]
    }
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvnet()
    }
    
    func numberOfRows() -> Int {
        cells.count
    }
    
    func cell(for indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
}
