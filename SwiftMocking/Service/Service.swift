//
//  Service.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 20.10.2023.
//

import Foundation
import Combine


// MARK: - Constants

private enum Constants {
    static let getCharacter: String = "https://rickandmortyapi.com/api/character"
}

// MARK: - Service

final class Service: IService {
    func fetchCharacters() -> [Character] {
        guard let url = URL(string: Constants.getCharacter) else { return [] }
        
        let data = try? Data(contentsOf: url)
        let response = data.flatMap { try? JSONDecoder().decode(CharacterResponse.self, from: $0) }
        return response?.results ?? []
    }
}
