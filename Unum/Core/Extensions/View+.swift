//
//  View+.swift
//  Unum
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import SwiftUI

// MARK: - Sombras Predefinidas
extension View {
    
    func habitCardShadow() -> some View {
        self.shadow(
            color: Color.habitShadow,
            radius: 8,
            x: 0,
            y: 4
        )
    }
    
    func habitWidgetShadow() -> some View {
        self.shadow(
            color: Color.black.opacity(0.2),
            radius: 16,
            x: 0,
            y: 8
        )
    }
    
    func habitButtonShadow() -> some View {
        self.shadow(
            color: Color.habitShadow,
            radius: 4,
            x: 0,
            y: 2
        )
    }
}
