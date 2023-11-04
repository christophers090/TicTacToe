//
//  GameModels.swift
//  TicTacToe
//
//  Created by Chris Sheehan on 11/3/23.
//

import Foundation

enum GameType {
    case single, bot, peer, undetermined
    
    var description: String{
        
        switch self {
        case .single:
            return "play w friend"
        case .bot:
            return "play bot"
        case .peer:
            return "play w other"
        case .undetermined:
            return ""
        }
        
    }
}
