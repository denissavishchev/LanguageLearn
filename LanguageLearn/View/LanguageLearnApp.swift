//
//  LanguageLearnApp.swift
//  LanguageLearn
//
//  Created by Devis on 24/10/2024.
//

import SwiftUI

@main
struct LanguageLearnApp: App {
    var body: some Scene {
        
        let _ = print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)
        
        WindowGroup {
            ContentView()
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
