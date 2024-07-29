//
//  FructusApp.swift
//  Fructus
//
//  Created by Reza on 22/7/2024.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }
           
        }
    }
}
