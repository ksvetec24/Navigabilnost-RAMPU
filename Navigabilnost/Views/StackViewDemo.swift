//
//  StackViewDemo.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 23.10.2026..
//

import SwiftUI

struct StackViewDemo: View {
    let description: String
    var body: some View {
        Text("\(description)")
    }
}

struct SimpleViewDestinationExample: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ColorDetail(color: .blue, text: "Blue")
                } label: {
                    Text("Prikaži blue")
                }
            } .navigationTitle("View Destination")
        }
    }
}

struct SimpleValueDestinationExample: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Mint", value: Color.mint)
                NavigationLink("Red", value: Color.red)
            }
            .navigationDestination(for: Color.self) { color in
                ColorDetail(color: color, text: color.description)
            } .navigationTitle("Value Destination")
        }
    }
}


struct ColorDetail: View{
    let color: Color
    let text: String
    
    var body: some View{
        Text(text)
        color
    }
}

#Preview{
    SimpleValueDestinationExample()
}
