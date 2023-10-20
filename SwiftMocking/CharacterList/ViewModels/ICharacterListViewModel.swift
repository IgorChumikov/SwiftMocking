//
//  ICharacterListViewModel.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 20.10.2023.
//

import Foundation

protocol ICharacterListViewModel: ObservableObject {
    var characters: [Character] { get set }
    
    func getCharacters()
}
