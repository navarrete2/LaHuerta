//
//  GardenViewModel.swift
//  LaHuerta
//
//  Created by Miguel  on 15/1/24.
//

//
//  GardenViewModel.swift
//  HuertoDePlantas
//
//  Created by Miguel  on 7/1/24.
//

import Foundation
// GardenViewModel.swift
import SwiftUI
import Combine

class GardenViewModel: ObservableObject {
    @Published var plants: [Plant] = []

    // Funciones para agregar, eliminar o modificar plantas

    func addPlant(plant: Plant) {
        plants.append(plant)
    }

    func deletePlant(at index: Int) {
        plants.remove(at: index)
    }

    // Otros métodos según sea necesario
}
