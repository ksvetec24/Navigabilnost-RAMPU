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
        //NavigationType(name: "NavigationSplitView", description: "Modularno za svaki OS. Sidebar > Content > Detail", destination: .splitView),
        NavigationType( name: "NavigationStack", description: "Hijerarhijsko kretanje po dubini kroz stog, automatski dodaje \"back\" gumb u gornji lijevi kut. Koristi se na ", destination: .stackView ),
        NavigationType( name: "Sheets", description: "Modalni prikazi koji klize s dna ekrana", destination: .sheetView)
    ]
    @State private var showSplitView = false
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
                    TabViewDemo()
                case .stackView:
                    StackViewDemo(description: type.description)
                case .splitView:
                    SplitViewDemo()
                }
            }
            Button("NavigationSplitView"){
               showSplitView=true
            }
        }.navigationTitle("Vrste navigabilnosti").fullScreenCover(isPresented: $showSplitView){
            SplitViewDemo()
        }
    }
}

#Preview {
    ContentView()
}
