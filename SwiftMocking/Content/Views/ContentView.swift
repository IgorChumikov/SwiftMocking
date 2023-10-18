//
//  ContentView.swift
//  SwiftMocking
//
//  Created by Игорь Чумиков on 18.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: IContentViewModel
    
    var body: some View {
        VStack {
            viewModel.image
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(viewModel.text)
        }
        .padding()
    }
}

#Preview {
    ContentView(
        viewModel: ContentViewModel(
            image: Image(systemName: "globe"),
            text: "Hello, world!")
    )
}
