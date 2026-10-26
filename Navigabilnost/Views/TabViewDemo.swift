//
//  TabViewDemo.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 22.10.2026..
//

import SwiftUI

struct TabViewDemo: View {
    var body: some View {
        TabView {
            Tab("Standardne Kartice", systemImage: "rectangle.3.group") {
                Text("Ekran s donjom trakom kartica")
                    .font(.title3)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue.opacity(0.1))
            }
            
            Tab("Stranice (Page)", systemImage: "book") {
                PageStyleTabView()
            }
        }
        .navigationTitle("TabView")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PageStyleTabView: View {
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
