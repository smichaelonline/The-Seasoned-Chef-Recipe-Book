//
//  Recipe.swift
//  The Seasoned Chef Recipe Book
//
//  Created by Stephanie Michael on 1/13/23.
//

import Foundation


struct Recipe {
    var mainInformation: MainInformation
    var ingredients: [Ingredient]
    var direction: [Direction]
}

struct MainInformation {
    var name: String
    var description: String
    var author: String
    var category: Category
    // categories are Breakfast, Lunch, Dinner, Dessert
    
    enum Category: String, CaseIterable {
        case breakfast = "Breakfast"
        case lunch = "Lunch"
        case dinner = "Dinner"
        case dessert = "Dessert"
    }
}

struct Ingredient {
    var name: String
    var quantity: Double
    var unit: Unit
    
    enum Unit: String, CaseIterable {
        case oz = "Ounces"
        case g = "Grams"
        case cups = "Cups"
        case tbsp = "Tablespoons"
        case tsp = "Teaspoon"
        case none = "No Units"
    }
}

struct Direction {
    var description: String
    var isOptional: Bool
}

