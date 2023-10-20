//
//  CharacterResponse.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 20.10.2023.
//

import Foundation

// MARK: - Character

struct CharacterResponse: Codable {
    // MARK: - Properties
    
    let results: [Character]
    
    // MARK: - Init
    
    init(results: [Character]) {
        self.results = results
    }
}
