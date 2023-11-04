//
//  GameView.swift
//  TicTacToe
//
//  Created by Chris Sheehan on 11/3/23.
//

import SwiftUI

struct GameView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("End Game") {
                    dismiss()
                }
                .buttonStyle(.bordered)
            }
        }
        .navigationTitle("XOXOXO")
        .inNavigationStack()
    }
}

#Preview {
    GameView()
}
