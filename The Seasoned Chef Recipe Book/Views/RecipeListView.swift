//
//  ContentView.swift
//  The Seasoned Chef Recipe Book
//
//  Created by Stephanie Michael on 1/13/23.
//

import SwiftUI

struct RecipesListView: View {
    @StateObject var recipeData = RecipeData()
    
    private let listBackgrounColor = AppColor.background
    private let listTextColor = AppColor.foreground
    
    var body: some View {
        List {
            ForEach(recipes) {
                recipe in NavigationLink(recipe.mainInformation.name, destination: RecipeDetailView(recipe: recipe))
            }
            // edit color scheme when app wraps up
            .listRowBackground(listBackgrounColor)
            .foregroundColor(listTextColor)
        }
        .navigationTitle(navigationTitle)
        }
    }

extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipesListView()
        }
    }
}
