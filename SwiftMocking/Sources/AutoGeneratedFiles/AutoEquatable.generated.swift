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
// MARK: - PostingActionButtonsStyle AutoEquatable
extension PostingActionButtonsStyle: Equatable {}
internal func == (lhs: PostingActionButtonsStyle, rhs: PostingActionButtonsStyle) -> Bool {
    guard lhs.title == rhs.title else { return false }
    guard compareOptionals(lhs: lhs.subtitle, rhs: rhs.subtitle, compare: ==) else { return false }
    guard lhs.backgroundColor == rhs.backgroundColor else { return false }
    guard lhs.foregroundColor == rhs.foregroundColor else { return false }
    guard lhs.isDisabled == rhs.isDisabled else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
