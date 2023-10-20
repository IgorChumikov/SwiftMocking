// Generated using Sourcery 2.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swiftlint:disable file_length
fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}


// MARK: - AutoEquatable for classes, protocols, structs
// MARK: - Character AutoEquatable
extension Character: Equatable {}
public func == (lhs: Character, rhs: Character) -> Bool {
    guard lhs.id == rhs.id else { return false }
    guard lhs.name == rhs.name else { return false }
    guard lhs.status == rhs.status else { return false }
    guard lhs.species == rhs.species else { return false }
    guard lhs.type == rhs.type else { return false }
    guard lhs.gender == rhs.gender else { return false }
    guard lhs.origin == rhs.origin else { return false }
    guard lhs.location == rhs.location else { return false }
    guard lhs.image == rhs.image else { return false }
    guard lhs.episode == rhs.episode else { return false }
    guard lhs.url == rhs.url else { return false }
    guard lhs.created == rhs.created else { return false }
    return true
}
// MARK: - CharacterResponse AutoEquatable
extension CharacterResponse: Equatable {}
internal func == (lhs: CharacterResponse, rhs: CharacterResponse) -> Bool {
    guard lhs.results == rhs.results else { return false }
    return true
}
// MARK: - Location AutoEquatable
extension Location: Equatable {}
public func == (lhs: Location, rhs: Location) -> Bool {
    guard lhs.name == rhs.name else { return false }
    guard lhs.url == rhs.url else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
