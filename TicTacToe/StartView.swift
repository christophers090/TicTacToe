//
//  ContentView.swift
//  TicTacToe
//
//  Created by Chris Sheehan on 11/3/23.
//

import SwiftUI

struct StartView: View {
    @State private var gameType: GameType = .undetermined
    @State private var yourName = ""
    @State private var otherName = ""
    @FocusState private var focus: Bool
    @State private var startGame = false
    var body: some View {
        VStack {
            Picker("Select mode", selection: $gameType) {
                Text("Select Game Type").tag(GameType.undetermined)
                Text("CPU").tag(GameType.bot)
                Text("other").tag(GameType.peer)
                Text("friend").tag(GameType.single)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke(lineWidth: 2))
            .accentColor(.primary)
            Text(gameType.description)
                .padding()
            VStack{
                switch gameType {
                case .single:
                    HStack{
                        TextField("Your name", text: $yourName)
                        TextField("Other name", text: $otherName)
                    }
                case .bot:
                    TextField("Your name", text: $yourName)
                case .peer:
                    EmptyView()
                case .undetermined:
                    EmptyView()
                }
            }
            .padding()
            .textFieldStyle(.roundedBorder)
            .focused($focus)
            .frame(width: 350)
            if gameType != .peer {
                Button("Start Game"){
                    focus = false
                    startGame.toggle()
                }
                .buttonStyle(.borderedProminent)
                .disabled(
                    gameType == .undetermined ||
                    gameType == .bot && yourName.isEmpty ||
                    gameType == .single && (yourName.isEmpty || otherName.isEmpty)
                    )
                
            }
            Image("LaunchScreen")
            Spacer()
            
        }
        .padding()
        .navigationTitle("XOXOXOXO")
        .fullScreenCover(isPresented: $startGame) {
            GameView()
        }
        .inNavigationStack()
    }
}

#Preview {
    StartView()
}
