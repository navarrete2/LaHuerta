//
//  PLantDetailView.swift
//  LaHuerta
//
//  Created by Miguel  on 15/1/24.
//

//
//  PLantDetailView.swift
//  HuertoDePlantas
//
//  Created by Miguel  on 7/1/24.
//

// PlantDetailView.swift
import SwiftUI

struct PlantDetailView: View {
    var plant: Plant

    var body: some View {
        VStack {
            Image(plant.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)

            Text(plant.name)
                .font(.title)

            Text(plant.description)
                .padding()
        }
        .navigationBarTitle(plant.name)
    }
}
