//
//  Habit.swift
//  Unum
//
//  Created by Gonzalo Trujillo Vallejo on 10/6/25.
//

import Foundation
import SwiftUI


// MARK: - Plantilla para la UI
// Usamos esta estructura simple para mostrar las opciones en la UI
// antes de crear un Hábito completo.
struct HabitTemplate: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let iconName: String
}


// MARK: - Vista Principal
struct HabitSelectionView: View {
    
    // --- Estado de la Vista ---
    
    @State private var selectedTab = 2 // 0: Widget, 1: App Principal, 2: Configuración
    
    // Lista de plantillas de hábitos para mostrar en la UI
    let habitTemplates: [HabitTemplate] = [
        .init(title: "Beber 2L de agua al día", iconName: "drop.fill"),
        .init(title: "Caminar 10,000 pasos", iconName: "figure.walk"),
        .init(title: "Leer 15 minutos", iconName: "book.fill"),
        .init(title: "Meditar 5 minutos", iconName: "brain.head.profile"),
        .init(title: "Hacer 20 flexiones", iconName: "figure.strengthtraining.traditional")
    ]
    
    // Almacena la plantilla de hábito que el usuario ha seleccionado.
    @State private var selectedTemplate: HabitTemplate?
    
    // Color principal de la App
    let accentColor = Color(red: 0.1, green: 0.75, blue: 0.5)

    // --- Cuerpo de la Vista ---
    
    var body: some View {
        ZStack {
            Color(.systemGray6).ignoresSafeArea()
            
            VStack(spacing: 20) {
                // Tarjeta Principal
                VStack(spacing: 25) {
                    Image(systemName: "plus")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(15)
                        .background(accentColor)
                        .clipShape(Circle())
                    
                    VStack {
                        Text("Elige tu primer hábito")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("Solo uno. Enfócate completamente. Puedes cambiarlo después de 7 días consecutivos.")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                    
                    // Lista de Plantillas de Hábitos
                    VStack(spacing: 12) {
                        ForEach(habitTemplates) { template in
                            HabitTemplateRow(template: template, selectedTemplate: $selectedTemplate)
                        }
                    }
                    
                    // Botón de Acción
                    Button(action: createNewHabit) {
                        HStack {
                            Text("Comenzar mi transformación")
                                .fontWeight(.semibold)
                            Image(systemName: "arrow.right")
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(accentColor)
                        .clipShape(Capsule())
                    }
                    .disabled(selectedTemplate == nil) // Deshabilita el botón si no hay nada seleccionado
                    .opacity(selectedTemplate == nil ? 0.6 : 1.0)
                }
                .padding(25)
                .background(Color(.systemGray6).opacity(0.5))
            }
            .padding()
        }
        .onAppear {
            // Selecciona la primera plantilla por defecto al cargar la vista
            if selectedTemplate == nil {
                selectedTemplate = habitTemplates.first
            }
        }
    }
    
    // --- Lógica de la Vista ---
    
    /// Crea una nueva instancia del modelo `Habit` a partir de la plantilla seleccionada.
    private func createNewHabit() {
        guard let selectedTemplate = selectedTemplate else {
            print("Error: No se ha seleccionado una plantilla de hábito.")
            return
        }
        
        // Aquí es donde usas tu modelo de dominio `Habit`
        let newHabit = Habit(title: selectedTemplate.title)
        
        print("Nuevo hábito creado:")
        print("- ID: \(newHabit.id)")
        print("- Título: \(newHabit.title)")
        print("- Creado en: \(newHabit.createdAt)")
        
        // En una app real, aquí pasarías `newHabit` a tu ViewModel o
        // a un gestor de datos para guardarlo en la base de datos (CoreData, SwiftData, etc.)
    }
}

// MARK: - Vista para cada Fila de Plantilla de Hábito
struct HabitTemplateRow: View {
    let template: HabitTemplate
    @Binding var selectedTemplate: HabitTemplate?
    
    var isSelected: Bool {
        template.id == selectedTemplate?.id
    }
    
    var body: some View {
        HStack {
            Image(systemName: template.iconName)
                .foregroundColor(isSelected ? .blue : .secondary)
                .frame(width: 25)
            Text(template.title) // Usamos 'title' del modelo
            Spacer()
        }
        .padding()
        .background(Color(.systemGray5).opacity(isSelected ? 0.8 : 0.4))
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? Color.blue : Color.clear, lineWidth: 1.5)
        )
        .onTapGesture {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.6)) {
                selectedTemplate = template
            }
        }
    }
}


// MARK: - Previsualización
#Preview {
    HabitSelectionView()
}
