//
//  ViewMods.swift
//  TicTacToe
//
//  Created by Chris Sheehan on 11/3/23.
//

import SwiftUI

struct NavStackContainer: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 17, *) {
            NavigationStack{
                content
            }
        } else {
            NavigationView{
                content
            }
            .navigationViewStyle(.stack)
        }
    }
}


extension Viwe {
    public func inNavigationStack() -> some View {
        return self.modifier(NavStackContainer())
    }
}
