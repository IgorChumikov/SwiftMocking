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
    
    var text: String = "Hello, world!"
    var text1: String = "Hello, world!"
    
    // MARK: - Init
    
    init(text: String, text1: String) {
        self.text = text
        self.text1 = text1
    }
}
