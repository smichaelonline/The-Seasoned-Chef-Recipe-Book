//
//  RecipeData.swift
//  The Seasoned Chef Recipe Book
//
//  Created by Stephanie Michael on 1/17/23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipe = Recipe.testRecipes
    
    func recipes(for category: MainInformation.Category) -> [Recipe] {
        var filteredRecipes = [Recipe]()
        for recipe in recipeData.recipes {
            if recipe.mainInformation.category == category {
                filteredRecipes.append(recipe)
            }
        }
    }
}
