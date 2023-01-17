//
//  Recipe.swift
//  The Seasoned Chef Recipe Book
//
//  Created by Stephanie Michael on 1/13/23.
//

import Foundation


struct Recipe: Identifiable {
    var id = UUID()
    var mainInformation: MainInformation
    var ingredients: [Ingredient]
    var direction: [Direction]
    
    init(mainInformation: MainInformation, ingredients:[Ingredient], directions: [Direction]) {
        self.mainInformation = mainInformation
        self.ingredients = ingredients
        self.direction = directions
    }
    
    init() {
        self.init(mainInformation: MainInformation(name: "", description: "", author: "", category: .breakfast),
                  ingredients: [], directions: []
                )
    }
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
    
    // create description so when user creates a recipe - this displays correct unit, name and quantity
    var description: String {
        let formattedQuantity = String(format: "%g", quantity)
        switch unit {
        case .none:
            let formattedName = quantity == 1 ? name : "\(name)s"
            return "\(formattedQuantity) \(unit.rawValue) \(name)"
        default:
            if quantity == 1 {
                return "1 \(unit.singlularName) \(name)"
            } else {
                return "\(formattedQuantity) \(unit.rawValue) \(name)"
            }
        }
    }
    
    enum Unit: String, CaseIterable {
        case oz = "Ounces"
        case g = "Grams"
        case cups = "Cups"
        case tbsp = "Tablespoons"
        case tsp = "Teaspoon"
        case none = "No Units"
        
        // takes the "s" out of all units when user inputs only a single use of it
        var singlularName: String { String(rawValue.dropLast())}
    }
}

struct Direction {
    var description: String
    var isOptional: Bool
}


