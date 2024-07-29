//
//  ContentView.swift
//  Fructus
//
//  Created by Reza on 22/7/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FroutRowView(fruit: item)
                            .padding(.vertical , 4)
                    }
                   
                }//MARK: End Of Foreach
            }// MARK: End of List
            .navigationTitle("Fruits")
        } //MARK: End Of Navigarion

        
    }
}

//MARK: PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}
