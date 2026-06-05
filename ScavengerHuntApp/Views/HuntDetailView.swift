//
//  HuntDetailView.swift
//  ScavengerHuntApp
//
//  Created by Syed Fahad Rasheed on 2026-06-04.
//

import SwiftUI
import PhotosUI

struct HuntDetailView: View {
    let item: HuntItem
    @State private var hasPhoto = false
    @State private var selectedItem: PhotosPickerItem?
    @EnvironmentObject var huntManager: HuntManager

    var body: some View {
        VStack{
            // Business & Target Info
            Text(item.businessName)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text(item.hiddenItemName)
                .font(.title2)
                .foregroundStyle(.blue)
            
            Text(item.clue)
                .font(.body)
                .foregroundStyle(.secondary)
            //  Status Indicator
            if hasPhoto {
                Text("Status: Found ")
                    .font(.headline)
                    .foregroundStyle(.green)
            } else {
                Text("Status: Not Found Yet")
                    .font(.headline)
                    .foregroundStyle(.orange)
            }
            // Photo Selection
            
            PhotosPicker(
                "Select Proof Photo",
                selection: $selectedItem,
                matching: .images

            )

            .onChange(of: selectedItem) {
                hasPhoto = selectedItem != nil
                if hasPhoto {
                    huntManager.markFound(item: item)
                }

            }
            //  hint graphic
            
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .cornerRadius(12)
        
        }
        .padding()
        }
    }


#Preview {
    HuntDetailView(
        item: HuntItem(businessName: "Tim Hortons",
                       hiddenItemName: "Golden Coffee Cup",
                       clue: "Find me where Canadians start their mornings.",
                       imageName: "timhortons")
    )
    .environmentObject(HuntManager())
}
