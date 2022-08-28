//
//  DataService.swift
//  Receipt List
//
//  Created by Joao Pedro Pereira on 17/08/2022.
//

import Foundation

class DataService {
    
    func getLocalData() -> [Recipe]{
        
        // parse local json file
        
        
        // get url path to the json file
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        // create a data object
        do {
            let data = try Data(contentsOf: url)
            
            // decode the date with json decoder
            
            let decoder = JSONDecoder()
            
            do {
            
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // add unique IDs
                for r in recipeData {
                    
                    r.id = UUID()
                    
                    
                }
                
                
                // return the recipes
                return recipeData
                
            }
            catch {
                // error decoding JSON file
                print(error)
            }
            
         
            
            
        }
        catch {
            // error getting data
            print(error)
        
        }
        
      
        
        
        return [Recipe]()

    }
    
}

