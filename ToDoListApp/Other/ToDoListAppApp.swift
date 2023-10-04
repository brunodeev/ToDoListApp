//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Bruno César on 02/10/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
