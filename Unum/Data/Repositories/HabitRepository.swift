//
//  HabitRepository.swift
//  Unum
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import Foundation

protocol HabitRepository {
    func fetchHabits() -> [Habit]
    func create(_ habit: Habit)
    func update(_ habit: Habit)
    func delete(_ habit: Habit)
}
