//
//  Navigation.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 05.10.2026..
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house"){
                
            }
        }.tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    Navigation()
}
