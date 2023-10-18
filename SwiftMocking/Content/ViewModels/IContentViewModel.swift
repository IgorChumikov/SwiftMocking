//
//  IContentViewModel.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 18.10.2023.
//

import Foundation
import SwiftUI

// MARK: - IContentViewModel

protocol IContentViewModel {
    var image: Image { get }
    var text: String { get }
}
