//
//  NavigationTypes.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 22.10.2026..
//

import SwiftUI

struct NavigationType: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let destination: NavigationKind
}
