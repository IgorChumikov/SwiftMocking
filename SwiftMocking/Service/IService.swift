//
//  IService.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 20.10.2023.
//

import Foundation
import Combine

// MARK: - IService

public protocol IService {
    func fetchCharacters() -> [Character]
}
