//
//  AnyObservableObject.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 23.10.2023.
//

import Combine

/// Стертый тип ObservableObject
///
/// Использование AnyObservableObject без ObservableObject в реализации - невозможно.
///
///     protocol IExampleViewModel: AnyObservableObject { ... }
///     class ExampleViewModel: ObservableObject, AnyObservableObject { ... }
public protocol AnyObservableObject: AnyObject {
    var objectWillChange: ObservableObjectPublisher { get }
}
