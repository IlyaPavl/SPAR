//
//  DescriptionView.swift
//  Spar
//
//  Created by ily.pavlov on 31.01.2024.
//

import SwiftUI

struct DescriptionView: View {
    var fontSize: CGFloat = 16
    var body: some View {
        VStack(alignment: .leading) {
            Text("Описание")
                .font(.system(size: fontSize, weight: .bold, design: .rounded))
                .padding(.bottom, 6)
            Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                .font(.system(size: fontSize, design: .rounded))
                .padding(.bottom, 20)
            VStack(alignment: .leading) {
                Text("Основные характеристики")
                    .font(.system(size: fontSize, weight: .bold, design: .rounded))
                    .padding(.bottom, 6)
                
                CharacteristicView(title: "Производство", value: "Россия, Краснодарский край", filler: "............", fontSize: fontSize)
                CharacteristicView(title: "Энергетическая ценность, ккал/кДж", 
                                   value: "25 ккал, 105 кДж", 
                                   filler: "..............",
                                   fontSize: fontSize)
                CharacteristicView(title: "Жиры/100 г", value: "0,1 г", filler: "..................................................", fontSize: fontSize)
                CharacteristicView(title: "Белки/100 г", value: "1,3 г", filler: "..................................................", fontSize: fontSize)
                CharacteristicView(title: "Углеводы/100 г", value: "3,3 г", filler: "............................................", fontSize: fontSize)
            }
            Text("Все характеристики")
                .font(.system(size: 17, weight: .black, design: .rounded))
                .foregroundColor(Constants.baseColor)
        }
        .padding()
    }
}

struct CharacteristicView: View {
    var title: String
    var value: String
    var filler: String
    var fontSize: CGFloat

    var body: some View {
        HStack(alignment: .top) {
            Text(title)
                .font(.system(size: fontSize, design: .rounded))
            Text(filler)
                .font(.system(size: fontSize))
                .foregroundColor(Constants.fillerColor)
            Spacer()
            Text(value)
                .font(.system(size: fontSize, design: .rounded))
                .multilineTextAlignment(.trailing)
        }
        .padding(.bottom)
    }
}

#Preview {
    DescriptionView()
}
