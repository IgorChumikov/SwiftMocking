//
//  SwiftMockingApp.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 18.10.2023.
//

import SwiftUI

@main
struct SwiftMockingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ContentViewModel(
                image: Image(systemName: "globe"),
                text: "Hello, world!")
            )
        }
    }
}
