//
//  ObservableExampleView.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 26.10.2026..
//

import SwiftUI

struct ObservableExampleView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

@Observable
class AppSettings {
    var themeColor = "Blue"
    var isDarkMode = false
}

struct SettingsView: View {
    @State private var settings = AppSettings()
    var body: some View {
        VStack {
            Text("Boja teme: \(settings.themeColor)")
            Button("Promijeni boju") {
                settings.themeColor = "Red"
            }
        }
    }
}

#Preview {
    SettingsView()
}
