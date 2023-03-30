//
//  TitleSubtitleCellViewModel.swift
//  EventsProgrammatic
//
//  Created by OldYellowBricks on 3/29/23.
//


final class TitleSubtitleCellViewModel {
    let title: String
    private(set) var subtitle: String
    let placeholder: String
    
    init(title: String, subtitle: String, placeholder: String) {
        self.title = title
        self.subtitle = subtitle
        self.placeholder = placeholder
    }
}
