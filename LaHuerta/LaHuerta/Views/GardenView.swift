//
//  GardenView.swift
//  LaHuerta
//
//  Created by Miguel  on 15/1/24.
//

//
//  GardenView.swift
//  HuertoDePlantas
//
//  Created by Miguel  on 7/1/24.
//



// GardenView.swift
import SwiftUI

struct GardenView: View {
    @ObservedObject var viewModel = GardenViewModel()

    var body: some View {
        NavigationView {
            PlantListView(plants: $viewModel.plants)
                .navigationBarTitle("Mi Huerto")
                .navigationBarItems(trailing:
                    NavigationLink(destination: AddPlantView(viewModel: viewModel)) {
                        Image(systemName: "plus")
                    }
                )
        }
    }
}
