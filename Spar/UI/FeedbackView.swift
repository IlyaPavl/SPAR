//
//  FeedbackView.swift
//  Spar
//
//  Created by ily.pavlov on 31.01.2024.
//

import SwiftUI

struct FeedbackView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Отзывы")
                    .font(.system(size: 25, weight: .bold, design: .rounded))

                Spacer()
                Text("Все 152")
                    .foregroundColor(Constants.baseColor)
                    .fontWeight(.heavy)
                    .font(.system(size: 17, weight: .bold, design: .rounded))

            }
            .padding([.trailing, .leading])
            ScrollView([.horizontal], showsIndicators: false) {
                HStack {
                    ForEach(0..<2) { _ in
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width: 250, height: 170)
                            .foregroundColor(.white)
                            .overlay (
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("Александр В.")
                                        .font(.system(size: 17, weight: .bold, design: .rounded))
                                    Text("7 мая 2021")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14, design: .rounded))

                                    
                                    HStack {
                                        ForEach(0..<4) { _ in
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.yellow)
                                                .imageScale(.small)
                                        }
                                        Image(systemName: "star")
                                            .foregroundColor(.yellow)
                                            .imageScale(.small)
                                    }
                                    Text("Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
                                        .font(.system(size: 15, design: .rounded))

                                }
                            )
                    }
                }
                .padding(.leading)
            }
            .shadow(color: .gray.opacity(0.2), radius: 8)
            
            Button("Оставить отзыв") {}
                .font(.system(size: 17, weight: .black, design: .rounded))
                .foregroundColor(Constants.baseColor)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Constants.baseColor, lineWidth: 3)
                        .frame(width: UIScreen.main.bounds.size.width - 30, height: 40)
                )
        }
    }
}


#Preview {
    FeedbackView()
}
