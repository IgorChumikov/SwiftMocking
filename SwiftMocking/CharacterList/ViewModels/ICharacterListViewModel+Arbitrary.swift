//
//  ICharacterListViewModel+Arbitrary.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 20.10.2023.
//

import Foundation

extension ICharacterListViewModelMock {
    
    // MARK: - Static Computed Properties

    static var forPreview: any ICharacterListViewModel {
        ICharacterListViewModelMock.arbitrary()
    }
    
    static func arbitrary(characters: [Character] = [.arbitrary(), .arbitrary()]) -> any ICharacterListViewModel {
        let mock = ICharacterListViewModelMock()
        mock.characters = characters
        return mock
    }
}

extension Character {
    static func arbitrary(
    id: Int = 1,
    name: String = "Rick Sanchez",
    status: String = "Alive",
    species: String = "Human",
    type: String = "",
    gender: String = "Male",
    origin: Location = .init(name: "Earth", url: "https://rickandmortyapi.com/api/location/1"),
    location: Location = .init(name: "Earth", url:  "https://rickandmortyapi.com/api/location/20"),
    image: String = "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
    episode: [String] = [
        "https://rickandmortyapi.com/api/episode/1",
        "https://rickandmortyapi.com/api/episode/2",
    ],
    url: String =  "https://rickandmortyapi.com/api/character/1",
    created: String = "2017-11-04T18:48:46.250Z"
    ) -> Character {
        Character(
            id: id,
            name: name,
            status: status,
            species: species,
            type: type,
            gender: gender,
            origin: origin,
            location: location,
            image: image,
            episode: episode,
            url: url,
            created: created
        )
    }
}
