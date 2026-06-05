//
//  HuntListView.swift
//  ScavengerHuntApp
//
//  Created by Syed Fahad Rasheed on 2026-06-04.
//

import SwiftUI

struct HuntListView: View {
    @EnvironmentObject var huntManager: HuntManager
        
    var body: some View {
        VStack {
            // Progress tracker header
            Text("Found \(huntManager.foundCount) / \(huntManager.items.count) Items")                    .font(.headline)
                    .padding()
            List{
                
                ForEach(huntManager.items) { item in
                    // Tap an item to see its  hunt details
                    NavigationLink(destination: HuntDetailView(item: item))
                    {
                        VStack(alignment: .leading) {
                            
                            
                            Text("the Store name:  \(item.businessName)")
                                .font(.headline)
                            Text("You Get:  \(item.hiddenItemName)")
                                .font(.subheadline.bold())
                        }
                    }
                }
            }
            //// Navigate to rewards screen with     progress
            NavigationLink(
                destination: RewardView(
                    foundCount: huntManager.foundCount
                        

                )

            ) {

                Text("View Rewards")

            }
        }
        .navigationTitle("Scavenger Hunt")
    }
}

#Preview {
    HuntListView()
        .environmentObject(HuntManager())
}
