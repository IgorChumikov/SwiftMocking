// Generated using Sourcery 2.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif
























public class IServiceMock: IService {

    public init() {}



    //MARK: - fetchCharacters

    public var fetchCharactersCallsCount = 0
    public var fetchCharactersCalled: Bool {
        return fetchCharactersCallsCount > 0
    }
    public var fetchCharactersReturnValue: [Character]!
    public var fetchCharactersClosure: (() -> [Character])?

    public func fetchCharacters() -> [Character] {
        fetchCharactersCallsCount += 1
        if let fetchCharactersClosure = fetchCharactersClosure {
            return fetchCharactersClosure()
        } else {
            return fetchCharactersReturnValue
        }
    }

}
