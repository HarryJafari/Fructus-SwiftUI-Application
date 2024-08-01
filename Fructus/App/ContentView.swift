//
//  ContentView.swift
//  Fructus
//
//  Created by Reza on 22/7/2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    @State private var isShowingSettings: Bool = false
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
            .navigationBarItems(trailing: Button(action: { 
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
        } //MARK: End Of Navigarion
        //this line is for ipads
        .navigationViewStyle(StackNavigationViewStyle())

        
    }
}

//MARK: PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}
