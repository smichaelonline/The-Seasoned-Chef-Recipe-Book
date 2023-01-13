//
//  Recipe.swift
//  The Seasoned Chef Recipe Book
//
//  Created by Stephanie Michael on 1/13/23.
//

import Foundation


struct Recipe {
    var mainInformation: MainInformation
    var ingredients: [String]
    var direction: [String]
}

struct MainInformation {
    var name: String
    var description: String
    var author: String
    var category: Category
    // categories are Breakfast, Lunch, Dinner, Dessert
}

enum Category: String, CaseIterable {
    case breakfast = "Breakfast"
    case lunch = "Lunch"
    case dinner = "Dinner"
    case dessert = "Dessert"
}
