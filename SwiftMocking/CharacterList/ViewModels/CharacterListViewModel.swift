//
//  CharacterListViewModel.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 20.10.2023.
//

import SwiftUI
import Combine

// MARK: - CharacterListViewModel

final class CharacterListViewModel: ObservableObject {
    // MARK: - Properties
    
    @Published var characters: [Character] = []
    private let service: IService
    
    // MARK: - Init
    
    init(service: IService) {
        self.service = service
    }
    
    // MARK: - Functions

    func getCharacters() {
        self.characters = service.fetchCharacters()
    }
}

