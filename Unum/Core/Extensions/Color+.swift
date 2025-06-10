//
//  Color+.swift
//  Unum
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import Foundation
import SwiftUI

import SwiftUI

// MARK: - Paleta de Colores Principal
extension Color {
    
    // MARK: - Colores Primarios (Verde/Teal)
    static let habitPrimary = Color(red: 52/255, green: 211/255, blue: 153/255)        // #34D399 - Emerald-400
    static let habitSecondary = Color(red: 20/255, green: 184/255, blue: 166/255)      // #14B8A6 - Teal-500
    static let habitAccent = Color(red: 16/255, green: 185/255, blue: 129/255)         // #10B981 - Emerald-500
    static let habitDark = Color(red: 13/255, green: 148/255, blue: 136/255)           // #0D9488 - Teal-600
    
    // MARK: - Gradientes Base
    static let habitGradientStart = habitPrimary                                        // Para gradiente principal
    static let habitGradientEnd = habitSecondary                                        // Para gradiente principal
    
    // MARK: - Colores de Fondo
    static let habitBackgroundPrimary = Color(red: 249/255, green: 250/255, blue: 251/255)  // #F9FAFB - Gray-50
    static let habitBackgroundSecondary = Color(red: 229/255, green: 231/255, blue: 235/255) // #E5E7EB - Gray-200
    static let habitCardBackground = Color.white                                         // #FFFFFF - White
    
    // MARK: - Colores de Texto
    static let habitTextPrimary = Color(red: 31/255, green: 41/255, blue: 55/255)      // #1F2937 - Gray-800
    static let habitTextSecondary = Color(red: 107/255, green: 114/255, blue: 128/255) // #6B7280 - Gray-500
    static let habitTextTertiary = Color(red: 156/255, green: 163/255, blue: 175/255)  // #9CA3AF - Gray-400
    static let habitTextOnPrimary = Color.white                                         // #FFFFFF - White
    
    // MARK: - Colores de Motivación (Púrpura/Rosa)
    static let habitMotivationLight = Color(red: 250/255, green: 245/255, blue: 255/255) // #FAF5FF - Purple-50
    static let habitMotivationAccent = Color(red: 168/255, green: 85/255, blue: 247/255) // #A855F7 - Purple-500
    static let habitMotivationPink = Color(red: 253/255, green: 242/255, blue: 248/255)  // #FDF2F8 - Pink-50
    
    // MARK: - Colores de Estado
    static let habitSuccess = Color(red: 34/255, green: 197/255, blue: 94/255)          // #22C55E - Green-500
    static let habitInfo = Color(red: 59/255, green: 130/255, blue: 246/255)            // #3B82F6 - Blue-500
    static let habitWarning = Color(red: 245/255, green: 158/255, blue: 11/255)         // #F59E0B - Amber-500
    
    // MARK: - Colores de Overlay
    static let habitOverlayLight = Color.white.opacity(0.2)                             // White 20%
    static let habitOverlayMedium = Color.white.opacity(0.3)                            // White 30%
    static let habitOverlayStrong = Color.white.opacity(0.4)                            // White 40%
    
    // MARK: - Colores de Componentes Específicos
    static let habitProgressTrack = Color(red: 229/255, green: 231/255, blue: 235/255) // #E5E7EB - Gray-200
    static let habitButtonDisabled = Color(red: 243/255, green: 244/255, blue: 246/255) // #F3F4F6 - Gray-100
    static let habitShadow = Color.black.opacity(0.1)                                   // Black 10%
    static let habitBorder = Color(red: 229/255, green: 231/255, blue: 235/255)        // #E5E7EB - Gray-200
}

// MARK: - Gradientes Predefinidos
extension LinearGradient {
    
    // Gradiente principal del widget y elementos principales
    static let habitPrimary = LinearGradient(
        colors: [Color.habitPrimary, Color.habitSecondary],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    // Gradiente para botones y elementos de acción
    static let habitAction = LinearGradient(
        colors: [Color.habitAccent, Color.habitDark],
        startPoint: .leading,
        endPoint: .trailing
    )
    
    // Gradiente para fondo general
    static let habitBackground = LinearGradient(
        colors: [Color.habitBackgroundPrimary, Color.habitBackgroundSecondary],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    // Gradiente para tarjeta de motivación
    static let habitMotivation = LinearGradient(
        colors: [Color.habitMotivationLight, Color.habitMotivationPink],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    // Gradiente con overlay para elementos sobre imágenes
    static let habitOverlay = LinearGradient(
        colors: [Color.habitOverlayLight, Color.clear],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
}
