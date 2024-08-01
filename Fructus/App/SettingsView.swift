//
//  SettingsView.swift
//  Fructus
//
//  Created by Harry Jafari on 30/7/2024.
//

import SwiftUI

struct SettingsView: View {
    //MARK: PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnBoarding: Bool = false
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical , showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: Section1
                    GroupBox(
                        label:
                            SettingsLableView(lableText: "Fructus", lableImage: "info.circle")
                    ) {
                        Divider().padding(.vertical , 4)
                        HStack(alignment: .center) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80 , height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    //MARK: Section2
                    
                    GroupBox(label: SettingsLableView(lableText: "Customization", lableImage: "painbrush")) {
                        Divider().padding(.vertical , 4)
                        
                       Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical , 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding, label: {
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        })
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8 , style: .continuous)))
                    }
                    
                    //MARK: Section3
                    
                    GroupBox(label : SettingsLableView(lableText: "Application", lableImage: "apps.iphone")) {
                        
                        
                        SettingsRowView(name: "Developer" , content: "Harry Jafari")
                        SettingsRowView(name: "Designer" , content: "Maya")
                        SettingsRowView(name: "Compability" , content: "IOS 14")
                        SettingsRowView(name: "Website" , linkLable: "SwiftUI Master Class" , linkDesctination: "victoriadigitalagency.com")
                        SettingsRowView(name: "Twiter" , linkLable: "@Harry_Jafari" , linkDesctination: "twitter.com")
                        
                        SettingsRowView(name: "SwiftUI" , content: "2.0")
                        SettingsRowView(name: "Version" , content: "1.1.0")
                        
                        
                    }
                    
                    
                    
                  
                }//:VStack
                .navigationBarTitle(Text("Settings") , displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            }
           
        }
    }
}

//MARK: Preview
#Preview {
    SettingsView()
}
