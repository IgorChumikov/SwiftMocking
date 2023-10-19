// Generated using Sourcery 2.1.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
import SwiftUI
#elseif os(OSX)
import AppKit
import SwiftUI
#endif
























class IContentViewModelMock: IContentViewModel {


    var image: Image {
        get { return underlyingImage }
        set(value) { underlyingImage = value }
    }
    var underlyingImage: (Image)!
    var text: String {
        get { return underlyingText }
        set(value) { underlyingText = value }
    }
    var underlyingText: (String)!


}
