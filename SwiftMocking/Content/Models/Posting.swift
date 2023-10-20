//
//  PostingActionButtonsStyle.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 19.10.2023.
//

import Foundation

// MARK: - Posting

struct Posting {
    // MARK: - Properties

    let productId: Int
    let title: String
    let subtitle: String
    let bodyText: String
    let isError: Bool
    let labelPrimaryButton: String
    let labelSecondaryButton: String

    // MARK: - Init

    init(productId: Int, 
         title: String,
         subtitle: String,
         bodyText: String,
         isError: Bool,
         labelPrimaryButton: String,
         labelSecondaryButton: String) {
        self.productId = productId
        self.title = title
        self.subtitle = subtitle
        self.bodyText = bodyText
        self.isError = isError
        self.labelPrimaryButton = labelPrimaryButton
        self.labelSecondaryButton = labelSecondaryButton
    }
}
