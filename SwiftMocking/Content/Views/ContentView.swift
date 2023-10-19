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
            Text(viewModel.text)
            Text(viewModel.text1)
        }
        .padding()
    }
}

#Preview {
    ContentView(
        viewModel: ContentViewModel(
            text: "Hello, world!",
            text1: "Hello, world!")
    )
}
