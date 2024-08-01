//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Harry Jafari on 1/8/2024.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLable: String? = nil
    var linkDesctination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack() {
                Text(name).foregroundColor(.gray)
                Spacer()
                if(content != nil) {
                    Text(content!)
                }else if (linkLable != nil && linkDesctination != nil) {
                    Link(linkLable! , destination: URL(string: "https://\(linkDesctination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
           
        }
    }
}

#Preview {
    SettingsRowView(name: "Develoepr", content: "Harry Jafari")
        .padding()
}
