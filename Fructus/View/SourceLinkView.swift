//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Harry Jafari on 29/7/2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia" , destination: URL(string: "https://wikipedia.com")! )
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
