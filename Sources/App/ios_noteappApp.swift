//
//  ios_noteappApp.swift
//  ios-noteapp
//
//  Created by Thân Văn Thanh on 02/06/2023.
//

import SwiftUI

@main
struct ios_noteappApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView(viewModel: .init())
        }
    }
}
