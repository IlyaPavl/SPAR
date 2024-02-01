//
//  NavigationBlock.swift
//  Spar
//
//  Created by ily.pavlov on 30.01.2024.
//

import SwiftUI

import SwiftUI

struct NavigationBlock: View {
    var body: some View {
        VStack {
            HStack {
                iconImage(systemName: "arrow.left", width: 25, height: Constants.navBaseHeight)
                Spacer()
                iconImage(systemName: "list.bullet.rectangle.portrait", width: 17, height: Constants.navBaseHeight)
                iconImage(systemName: "square.and.arrow.up", width: 15, height: Constants.navBaseHeight)
                    .padding()
                iconImage(systemName: "heart", width: 22, height: Constants.navBaseHeight)
                
            }
            .padding([.leading, .trailing])
        }
        Divider()
    }

    private func iconImage(systemName: String, width: CGFloat, height: CGFloat) -> some View {
        Image(systemName: systemName)
            .resizable()
            .frame(width: width, height: height)
            .foregroundColor(Constants.baseColor)
            .imageScale(.small)
    }
}


#Preview {
    NavigationBlock()
}
