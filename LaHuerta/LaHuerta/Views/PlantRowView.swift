//
//  PlantRowView.swift
//  LaHuerta
//
//  Created by Miguel  on 15/1/24.
//

//
//  PlantRowView.swift
//  HuertoDePlantas
//
//  Created by Miguel  on 7/1/24.
//

// PlantRowView.swift
import SwiftUI

struct PlantRowView: View {
    var plant: Plant

    var body: some View {
        HStack {
            Image(plant.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(8)

            VStack(alignment: .leading) {
                Text(plant.name)
                    .font(.headline)
                Text(plant.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}
