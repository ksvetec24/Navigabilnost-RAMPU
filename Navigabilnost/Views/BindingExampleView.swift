//
//  BindingExampleView.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 26.10.2026..
//

import SwiftUI

struct BindingExampleView: View{
    @State private var isOn = false
    var body: some View {
        CustomToggleView(isOn: $isOn)
    }
}

struct CustomToggleView: View {
    @Binding var isOn: Bool
    var body: some View {
        Toggle("Omogući opciju", isOn: $isOn)
            .padding()
    }
}


#Preview {
    BindingExampleView()
}
