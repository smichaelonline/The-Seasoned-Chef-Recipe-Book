//
//  ContentView.swift
//  The Seasoned Chef Recipe Book
//
//  Created by Stephanie Michael on 1/13/23.
//

import SwiftUI

struct RecipesListView: View {
    @EnvironmentObject private var recipeData: RecipeData
    let category: MainInformation.Category
    
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
    private var recipes: [Recipe] {
        recipeData.recipes(for: category)
    }
    
    private var recipe: [Recipe] {
        recipeData.recipes(for: category)
      }
    
    private var navigationTitle: String {
        "\(category.rawValue) Recipes"
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipesListView(category: .breakfast)
                .environmentObject(RecipeData())
        }
    }
}
