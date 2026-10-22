//
//  SheetView.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 22.10.2026..
//

import SwiftUI

struct SheetViewDemo: View {
    @State private var isSheetPresented = false
    var body: some View {
        VStack(spacing: 20) {
            Text("Modalni prikaz (.sheet)") .font(.title2)
            Button("Otvori Sheet") {
                isSheetPresented = true
            } .buttonStyle(.borderedProminent)
            .sheet(isPresented: $isSheetPresented) {
                SheetContentView()
            }
        } .padding()
        .navigationTitle("Sheets")
    }
}
struct SheetContentView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(spacing: 20) {
            Text("Ovo je modalni prikaz koji je kliznuo s dna!")
            .font(.headline)
            Button("Zatvori Modal") {
                dismiss()
            } .buttonStyle(.bordered)
        } .padding()
    }
}
