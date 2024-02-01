//
//  ContentView.swift
//  Spar
//
//  Created by ily.pavlov on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBlock()
            ScrollView {
                VStack {
                    ItemView()
                        .padding(.bottom, 10)
                    DescriptionView()
                    FeedbackView()
                }
                .padding(.top, 7)
            }
            PriceBlock()
        }
    }
}

#Preview {
    ContentView()
}
