//
//  SplitViewDemo.swift
//  Navigabilnost
//
//  Created by Karlo Svetec on 23.10.2026..
//

import SwiftUI

struct Employee: Hashable, Identifiable{
    let id = UUID()
    let firstName: String
    let lastName: String
    let position: String
}
struct Department: Hashable, Identifiable{
    let id = UUID()
    let name: String
    let employees: [Employee]
}
struct Store: Hashable, Identifiable{
    let id = UUID()
    let name: String
    let departments: [Department]
}



struct SplitViewDemo: View {
    @State private var selectedCategory: String? = "Igre"
    
    static let stores=[
        Store(name: "Konzum", departments: [Department(name: "Sales",
                                                       employees:
                                                        [Employee(firstName: "Ivan", lastName: "Horvat", position: "Manager"),
                                                         Employee(firstName: "Marko", lastName: "Marković", position: "Intern")]
                                                      ),
                                            Department(name: "IT",
                                                       employees:
                                                        [Employee(firstName: "Ivica", lastName: "Ivanović", position: "Manager"),
                                                         Employee(firstName: "Mihael", lastName: "Jackson", position: "Customer support")]
                                                        )
        ])
    ]
    @State private var selectedStore: Store? = nil
    @State private var selectedDepartment: Department? = nil
    @State private var columnVisibility: NavigationSplitViewVisibility = .all
    var body: some View {
        
        NavigationSplitView(columnVisibility: $columnVisibility){
            List(selection: $selectedStore) {
                ForEach(SplitViewDemo.stores) { store in
                    Text(store.name)
                        .tag(store)
                }
            }
            .navigationTitle("Trgovine")
        } content: {
            if let store = selectedStore {
                List(store.departments,selection: $selectedDepartment) { department in
                    Text(department.name).tag(department)
                }
                .navigationTitle("Odjel")
            }
            else {
                ContentUnavailableView("Odaberite trgovinu", systemImage: "storefront")
            }
        }detail: {
            if let department = selectedDepartment{
                List(department.employees){
                    employee in
                    Text(employee.firstName+" "+employee.lastName)
                }.navigationTitle("Zaposlenici")
            }
            else{
                ContentUnavailableView("Odaberite trgovinu", systemImage: "storefront")
            }
        }
    }
}
#Preview {
    SplitViewDemo()
}
