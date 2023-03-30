//
//  EventsListViewModel.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//

import Foundation

final class EventsListViewModel {
    let title = "Event"
    var coordinator: EventListCoordinator?
    
    func tappedAddEvent() {
        coordinator?.startAddEvent()
    }
}
