//
//  Model.swift
//  MyRecipeApp
//
//  Created by Serezha on 20.03.2023.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[Ingredients]
    var directions:[String]
}

class Ingredients: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var num:Int?
    var unit:String?
    var denom:Int?
}
