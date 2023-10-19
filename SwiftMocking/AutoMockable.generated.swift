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
























class IContentViewModelMock: IContentViewModel {


    var text: String {
        get { return underlyingText }
        set(value) { underlyingText = value }
    }
    var underlyingText: (String)!
    var text1: String {
        get { return underlyingText1 }
        set(value) { underlyingText1 = value }
    }
    var underlyingText1: (String)!


}
