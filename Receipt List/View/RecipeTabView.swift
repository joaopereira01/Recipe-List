//
//  RecipeTabView.swift
//  Receipt List
//
//  Created by Joao Pedro Pereira on 28/08/2022.
//

import SwiftUI

struct RecipeTabView: View {
     
    @State var tabindex = 0
    
    var body: some View {
        
        TabView (selection: $tabindex) {
            
            Text ("This is tab view").tabItem {
                
                VStack {
                Image (systemName: "star")
                Text ("Feature")
                
                }}.tag(0)
            
            RecipeListView ().tabItem {
                
                VStack {
                Image (systemName: "list.bullet")
                Text ("List")
                }
            }.tag(1)
        }
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
