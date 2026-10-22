//
//  ContentView.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 05.10.2026..
//

import SwiftUI

struct ContentView: View {
    let options=[
        NavigationType(name: "TabView", description: "Opcije na dnu ekrana", destination: .tabView),
        NavigationType(name: "NavigationSplitView", description: "Modularno za svaki OS. Sidebar > Content > Detail", destination: .splitView),
        NavigationType( name: "NavigationStack", description: "Hijerarhijsko kretanje po dubini kroz stog", destination: .stackView ),
        NavigationType( name: "Sheets", description: "Modalni prikazi koji klize s dna ekrana", destination: .sheetView)
    ]
    var body: some View {
        NavigationStack{
            List(options){ option in
                    NavigationLink(value: option){
                        Circle()
                            .fill(.blue)
                            .frame(width:20,height:20)
                        Text(option.name)
                    }
                }
            .navigationDestination(for: NavigationType.self){ type in
                switch type.destination{
                case .sheetView:
                    SheetViewDemo()
                case .tabView:
                    SheetViewDemo()
                case .splitView:
                    SheetViewDemo()
                case .stackView:
                    SheetViewDemo()
                }
            }
        }.navigationTitle("Vrste navigabilnosti")
    }
}

#Preview {
    ContentView()
}
