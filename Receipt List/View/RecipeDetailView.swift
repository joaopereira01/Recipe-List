//
//  RecipeDetailView.swift
//  Receipt List
//
//  Created by Joao Pedro Pereira on 23/08/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .center) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill().frame(width: 400, height: 500)
                
                VStack(alignment: .leading) {
                    Text(recipe.name + " Ingredients")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                        
                    ForEach(recipe.ingredients, id:\.self) { r in
                        HStack{
                            Text("- " + r)
                            Spacer()

                        }
                        
                }
                }
                .padding(.horizontal)
                Divider()
                VStack(alignment: .leading){
                        Text(recipe.name + " Directions")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                        
                  
                        ForEach(0..<recipe.directions.count, id:\.self) { index in
                            
                            HStack{
                                Text(String(index+1) + " - " +  recipe.directions[index])
                                Spacer()
                
                            }
                        }
                }
                .padding(.horizontal)
            
            }
            
            
            
        }.ignoresSafeArea().navigationBarTitle(recipe.name)
        

    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let  model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
