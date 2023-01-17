//
//  RecipeData.swift
//  The Seasoned Chef Recipe Book
//
//  Created by Stephanie Michael on 1/17/23.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
