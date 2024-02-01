//
//  PriceBlock.swift
//  Spar
//
//  Created by ily.pavlov on 31.01.2024.
//

import SwiftUI

struct PriceBlock: View {
    @State private var selectedUnit = 0
    @State private var quantity = 1
    let price = 55.9
    let units = ["шт", "кг"]
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 130)
                .clipShape(Rectangle())
                .shadow(color: .gray.opacity(0.1), radius: 5, x: 0, y: -10)

            VStack {
                Picker("Выберите единицы измерения", selection: $selectedUnit) {
                    ForEach(units.indices, id: \.self) {
                        Text(self.units[$0])
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.bottom, 10)

                HStack(alignment: .center) {
                    VStack {
                        Text("\(String(format: "%.1f", price))")
                            .font(.system(size: 27, weight: .black, design: .rounded))

                        Text("199,0")
                            .font(.system(size: 13, design: .rounded))
                            .foregroundColor(.gray)
                            .strikethrough()
                    }

                    Text("₽/кг")
                        .font(.system(size: 13, weight: .black, design: .rounded))

                    Spacer()

                    QuantityControl(quantity: $quantity, price: price)
                }
            }
            .padding()
        }
    }
}

struct QuantityControl: View {
    @Binding var quantity: Int
    let price: Double

    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(.green)
                .frame(width: 200, height: 50)
                .overlay(
                    HStack {
                        Button(action: {
                            if quantity > 1 {
                                quantity -= 1
                            }
                        }) {
                            Image(systemName: "minus")
                                .foregroundColor(.white)
                                .imageScale(.large)
                        }
                        .padding(.leading,10)
                        Spacer()
                        VStack {
                            Text("\(quantity) шт")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .bold, design: .rounded))


                            Text("\(String(format: "%.2f", Double(quantity) * price))₽")
                                .foregroundColor(.white)

                                .font(.system(size: 15, weight: .light, design: .rounded))

                        }
                        Spacer()
                        Button(action: {
                            quantity += 1
                        }) {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .imageScale(.large)
                        }
                        .padding(.trailing,10)

                    }
                )
        }
    }
}


#Preview {
    PriceBlock()
}
