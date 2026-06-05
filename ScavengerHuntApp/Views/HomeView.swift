//
//  HomeView.swift
//  ScavengerHuntApp
//
//  Created by Syed Fahad Rasheed on 2026-06-04.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                // Header Titles
                Text("🏆 Brampton Business Scavenger Hunt🏆")
                    .font(.title.bold())
                Text("Find hidden items at local businesses")
                    .font(.headline)
                    .padding(10)
                
                Text("Prized for:")
                    .font(.headline)
                    .padding(10)
                
                Text("5 Items = 10% Discount")
                    .font(Font.body.bold())
                Text("7 Items = 20% Discount")
                    .font(Font.body.bold())
                Text("10 Items = Grand Prize Entry")
                    .font(Font.body.bold())
                
                Text("All the Best")
                    .background(
                Capsule()
                    .fill(.orange))
                    .frame(width: 150, height: 50)
                
                
                // Primary Action Button
                NavigationLink(destination: HuntListView()) {
                    Text("Start Hunt")
                        .frame(maxWidth: .infinity)
                    
                    
                }.buttonStyle(.borderedProminent)
                    .tint(Color.blue)
                    .padding()
                
            }
           
        }
        
    }
}

#Preview {
    HomeView()
}
