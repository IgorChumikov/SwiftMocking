// Generated using Sourcery 2.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
import XCTest

extension SwiftMockingTests {
  static var allTests: [(String, (SwiftMockingTests) -> () throws -> Void)] = [
    ("testExample", testExample),
    ("testPerformanceExample", testPerformanceExample)
  ]
}
extension SwiftMockingUITests {
  static var allTests: [(String, (SwiftMockingUITests) -> () throws -> Void)] = [
    ("testExample", testExample),
    ("testLaunchPerformance", testLaunchPerformance)
  ]
}
extension SwiftMockingUITestsLaunchTests {
  static var allTests: [(String, (SwiftMockingUITestsLaunchTests) -> () throws -> Void)] = [
    ("testLaunch", testLaunch)
  ]
}

// swiftlint:disable trailing_comma
XCTMain([
  testCase(SwiftMockingTests.allTests),
  testCase(SwiftMockingUITests.allTests),
  testCase(SwiftMockingUITestsLaunchTests.allTests),
])
// swiftlint:enable trailing_comma

