//
//  CybersecurityApp.swift
//  Cybersecurity
//
//  Created by Sarah Belal on 08/06/2022.
//

import SwiftUI

@main
struct CybersecurityApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)

        }
    }
}
