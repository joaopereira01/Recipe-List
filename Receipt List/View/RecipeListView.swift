//
//  ContentView.swift
//  Receipt List
//
//  Created by Joao Pedro Pereira on 17/08/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List (model.recipes) { r in
                NavigationLink (destination: RecipeDetailView (recipe:r), label: {
                                    HStack {
                    
                    Image(r.image).resizable().scaledToFill().frame(width: 50, height: 50, alignment: .center).clipped().cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    Text(r.name)
                                        Spacer()}})
            
            }.navigationBarTitle("All Recipies")
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
