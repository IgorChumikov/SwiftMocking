//
//  PostingActionButtonsStyle.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 19.10.2023.
//

import Foundation

struct PostingActionButtonsStyle {
    // MARK: - Properties
    
    var title: String
    var subtitle: String?
    let backgroundColor: String
    let foregroundColor: String
    let isDisabled: Bool
    
    // MARK: - Init
    
    init(
        title: String = "",
        subtitle: String? = nil,
        backgroundColor: String,
        foregroundColor: String,
        isDisabled: Bool = false
    ) {
        self.title = title
        self.subtitle = subtitle
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.isDisabled = isDisabled
    }
}
