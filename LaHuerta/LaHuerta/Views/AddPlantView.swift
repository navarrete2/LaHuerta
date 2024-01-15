//
//  AddPlantView.swift
//  LaHuerta
//
//  Created by Miguel  on 15/1/24.
//

//
//  AddPlantView.swift
//  HuertoDePlantas
//
//  Created by Miguel  on 7/1/24.
//

// AddPlantView.swift
// AddPlantView.swift
import SwiftUI

struct AddPlantView: View {
    @ObservedObject var viewModel: GardenViewModel
    @State private var plantName = ""
    @State private var plantDescription = ""
    @State private var selectedImageIndex = 0

    // Array de nombres de imágenes disponibles
    let imageNames = ["Tomate", "pimiento", "zanahoria","ajo", "cebolla"]  // Agrega aquí los nombres de tus imágenes

    var body: some View {
        Form {
            Section(header: Text("Nueva Planta")) {
                TextField("Nombre", text: $plantName)
                TextField("Descripción", text: $plantDescription)

                Picker("Selecciona una imagen", selection: $selectedImageIndex) {
                    ForEach(0..<imageNames.count) { index in
                        Text(imageNames[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }

            Section {
                Button("Agregar Planta") {
                    let selectedImageName = imageNames[selectedImageIndex]
                    let newPlant = Plant(name: plantName, description: plantDescription, imageName: selectedImageName)
                    viewModel.addPlant(plant: newPlant)
                }
            }
        }
        .navigationBarTitle("Agregar Planta")
    }
}
