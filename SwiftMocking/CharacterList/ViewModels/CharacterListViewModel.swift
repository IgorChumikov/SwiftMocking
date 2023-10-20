//
//  CharacterListViewModel.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 20.10.2023.
//

import SwiftUI
import Combine

final class CharacterListViewModel: ObservableObject {
    @Published var characters: [Character] = []
    private var cancellables: Set<AnyCancellable> = []
    private let service = Service()

    func fetchCharacters() {
        self.characters = service.fetchCharacters()
    }
}

