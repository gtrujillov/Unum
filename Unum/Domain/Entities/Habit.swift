//
//  Habit.swift
//  Unum
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import Foundation

// MARK: - Entidad de Dominio
struct Habit: Identifiable, Equatable {
    let id: UUID
    let title: String
    let createdAt: Date
    
    // Estado del hábito
    var currentStreak: Int
    var isCompletedToday: Bool
    var lastCompletedDate: Date?
    var totalCompletions: Int
    
    init(
        id: UUID = UUID(),
        title: String,
        createdAt: Date = Date(),
        currentStreak: Int = 0,
        isCompletedToday: Bool = false,
        lastCompletedDate: Date? = nil,
        totalCompletions: Int = 0
    ) {
        self.id = id
        self.title = title
        self.createdAt = createdAt
        self.currentStreak = currentStreak
        self.isCompletedToday = isCompletedToday
        self.lastCompletedDate = lastCompletedDate
        self.totalCompletions = totalCompletions
    }
}

// MARK: - Lógica de Dominio
extension Habit {
    var canChangeHabit: Bool {
        currentStreak >= 7
    }
    
    var progressPercentage: Double {
        min(Double(currentStreak) / 7.0, 1.0) * 100
    }
}
