//
//  ContentViewModel.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 18.10.2023.
//

import Foundation
import SwiftUI

// MARK: - ContentViewModel

final class ContentViewModel: IContentViewModel {
    // MARK: - Properties
    
    var image: Image = Image(systemName: "globe")
    var text: String = "Hello, world!"
    
    // MARK: - Init
    
    init(image: Image, text: String) {
        self.image = image
        self.text = text
    }
}
