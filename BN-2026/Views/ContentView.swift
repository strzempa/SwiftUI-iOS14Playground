//
//  ContentView.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 11/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var contentType: ContentType?
    private let model = KittensModel(numberOfCreations: 30)
    
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<allContentTypeButtons.count) { index in
                    allContentTypeButtons[index]
                }
            }
            Divider()
            contentType?.view(from: model)
            Spacer()
        }
    }
}

private extension ContentView {
    var allContentTypeButtons: [AnyView] {
        ButtonFactory
            .makeAllContentTypeButtons { type in
                contentType = type
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
