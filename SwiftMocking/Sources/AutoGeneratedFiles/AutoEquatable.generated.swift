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
// MARK: - Posting AutoEquatable
extension Posting: Equatable {}
internal func == (lhs: Posting, rhs: Posting) -> Bool {
    guard lhs.productId == rhs.productId else { return false }
    guard lhs.title == rhs.title else { return false }
    guard lhs.subtitle == rhs.subtitle else { return false }
    guard lhs.bodyText == rhs.bodyText else { return false }
    guard lhs.isError == rhs.isError else { return false }
    guard lhs.labelPrimaryButton == rhs.labelPrimaryButton else { return false }
    guard lhs.labelSecondaryButton == rhs.labelSecondaryButton else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
