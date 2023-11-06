//
//  TicTacToeApp.swift
//  TicTacToe
//
//  Created by Chris Sheehan on 11/3/23.
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var game = GameService()
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(game)
        }
    }
}
