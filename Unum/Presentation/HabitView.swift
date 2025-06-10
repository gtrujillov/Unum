//
//  HabitView.swift
//  Unum
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import SwiftUI

struct HabitView: View {
    let habit: Habit

    var body: some View {
        VStack {
            Text(habit.title)
                .font(.largeTitle)
        }
        .padding()
    }
}
