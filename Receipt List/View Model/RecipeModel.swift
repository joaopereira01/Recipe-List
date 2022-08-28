//
//  RecipeModel.swift
//  Receipt List
//
//  Created by Joao Pedro Pereira on 17/08/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // create an instance of data service and get the data
        
        let service = DataService()
        self.recipes = service.getLocalData()
        
        
        
    }
    
}
