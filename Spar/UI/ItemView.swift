//
//  ItemView.swift
//  Spar
//
//  Created by ily.pavlov on 30.01.2024.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        VStack {
            Image("extraForTea")
                .resizable()
                .frame(width: Constants.imageSize, height: Constants.imageSize)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 120, height: 30)
                        .foregroundColor(Constants.baseColor)
                        .overlay(
                            Text("Цена по карте")
                                .foregroundColor(.white)
                                .font(.system(size: 14, design: .rounded))
                                .padding(8)
                        )
                        .position(x: 10 , y: 10)
                )


            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("4.1")
                    .font(.system(size: 17, weight: .heavy, design: .rounded))
                Divider()
                    .frame(width: 1, height: 17, alignment: .leading)
                    .background(Color.black)
                Text("19 отзывов")
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                    .foregroundColor(.gray)
                Spacer()
                ZStack(alignment: .leading) {
                    CustomShape()
                        .frame(width: 40, height: 40)
                        .padding(.trailing)
                        .foregroundColor(.red)
                    Text("-5%")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .heavy, design: .rounded))
                        .padding(.leading, 7)
                }
            }
            HStack {
                Text("""
                     Добавка \"Липа\"
                     к чаю 200 г
                     """)
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                Spacer()
            }
            HStack {
                Image("flag.spain")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .clipShape(Circle())
                Text("Испания, Риоха")
                    .font(.system(size: 17, weight: .medium, design: .rounded))
                Spacer()
            }
            .padding(.leading, 5)
        }
        .padding(.leading)
    }
}


#Preview {
    ItemView()
}
