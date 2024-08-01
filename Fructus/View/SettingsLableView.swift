//
//  SettingsLableView.swift
//  Fructus
//
//  Created by Harry Jafari on 1/8/2024.
//

import SwiftUI

struct SettingsLableView: View {
    
    var lableText: String
    var lableImage:String
    
    var body: some View {
        HStack {
            Text(lableText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: lableImage)
        }
    }
}

#Preview {
    SettingsLableView(lableText: "Fructus", lableImage: "info.circle")
        .previewLayout(.sizeThatFits)
}
