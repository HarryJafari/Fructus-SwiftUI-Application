//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Harry Jafari on 30/7/2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutrotional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    
                    Divider()
                        .padding(.vertical , 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)

                    }
                    
                }
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
