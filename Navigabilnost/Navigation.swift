//
//  Navigation.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 05.10.2026..
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        TabView {
            Text("First Screen")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue.opacity(0.2))

            Text("Second Screen")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green.opacity(0.2))

            Text("Third Screen")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.purple.opacity(0.2))
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}
#Preview {
    Navigation()
}
