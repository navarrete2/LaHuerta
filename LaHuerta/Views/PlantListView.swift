//
//  PlantListView.swift
//  LaHuerta
//
//  Created by Miguel  on 15/1/24.
//

//
//  PlantListView.swift
//  HuertoDePlantas
//
//  Created by Miguel  on 7/1/24.
//

// PlantListView.swift
import SwiftUI

struct PlantListView: View {
    @Binding var plants: [Plant]

    var body: some View {
        List {
            ForEach(plants) { plant in
                NavigationLink(destination: PlantDetailView(plant: plant)) {
                    PlantRowView(plant: plant)
                }
            }
            .onDelete(perform: deletePlants)
        }
    }

    private func deletePlants(at offsets: IndexSet) {
        plants.remove(atOffsets: offsets)
    }
}
