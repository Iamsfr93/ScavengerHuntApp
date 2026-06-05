//
//  HuntManager.swift
//  ScavengerHuntApp
//
//  Created by Syed Fahad Rasheed on 2026-06-04.
//

import Foundation
import Combine

class HuntManager : ObservableObject{
    //app data load notifies views on change
    @Published var items: [HuntItem] = SampleData.sampleItems()
    
    var foundCount: Int {
        items.filter { $0.isFound }.count
        
    }
    // Finds matching target 
    func markFound(item: HuntItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isFound = true
            
        }
    }
}
