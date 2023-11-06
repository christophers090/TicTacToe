//
//  SquareView.swift
//  TicTacToe
//
//  Created by Chris Sheehan on 11/5/23.
//

import SwiftUI

struct SquareView: View {
    @EnvironmentObject var game: GameService
    let index: Int
    var body: some View {
        Button{
            game.makeMove(at: index)
        } label: {
            game.gameBoard[index].image
                .resizable()
                .frame(width: 200, height: 200)
        }
        .disabled(game.gameBoard[index].player != nil)
        .foregroundColor(.primary)
    }
}

#Preview {
    SquareView(index: 1)
        .environmentObject(GameService())
}
