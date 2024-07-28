//
//  OnboardingView.swift
//  Fructus
//
//  Created by Harry Jafari on 28/7/2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: BODY
    var body: some View {
        TabView {
            ForEach(0 ..< fruits.count) { index in
                FruitCardView(fruit: fruits[index])
            }//MARK: Loop
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: PREVIEW
#Preview {
    OnboardingView(fruits: fruitsData)
}
