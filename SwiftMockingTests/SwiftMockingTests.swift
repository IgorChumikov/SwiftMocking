//
//  SwiftMockingTests.swift
//  SwiftMockingTests
//
//  Created by Игорь Чумиков on 18.10.2023.
//

import XCTest
@testable import SwiftMocking

final class SwiftMockingTests: XCTestCase {

    var viewModel: CharacterListViewModel!
    var service: IServiceMock!
    
    override func setUp() {
        super.setUp()
        service = .init()
        service.fetchCharactersReturnValue = []
        viewModel = CharacterListViewModel(service: service)
    }
    
    override func tearDown() {
        weak var testViewModel = viewModel
        
        viewModel = nil
        super.tearDown()
        
        XCTAssertNil(testViewModel, "Instance should have been deallocated. Potential memory leak!")
    }

    func testStartCharacterList() {
        // When
        viewModel.getCharacters()
        
        // Then
        XCTAssertEqual(service.fetchCharactersCallsCount, 1)
        XCTAssertEqual(service.fetchCharactersCalled, true)
        XCTAssertEqual(service.fetchCharactersReturnValue.isEmpty, true)
    }
    
    func testStartCharacterListCallGetCharactersTwoTimes() {
        // When
        viewModel.getCharacters()
        viewModel.getCharacters()
        
        // Then
        XCTAssertEqual(service.fetchCharactersCallsCount, 2)
        XCTAssertEqual(service.fetchCharactersCalled, true)
        XCTAssertEqual(service.fetchCharactersReturnValue.isEmpty, true)
    }
}
