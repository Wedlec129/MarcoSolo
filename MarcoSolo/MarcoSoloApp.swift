//
//  MarcoSoloApp.swift
//  MarcoSolo
//
//  Created by Борух Соколов on 12.10.2023.
//

import SwiftUI

@main
struct MarcoSoloApp: App {
    
    @StateObject var vm: VMhome  = VMhome()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                
                HomeView()
                    .environmentObject(vm)
                    .tabItem {
                        Label("Menu", systemImage: "list.bullet.rectangle.portrait")
                    }
                
            }
        }
    }
}
