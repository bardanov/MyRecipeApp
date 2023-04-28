//
//  ContentView.swift
//  MyRecipeApp
//
//  Created by Serezha on 20.03.2023.
//

import SwiftUI

struct MenuList: View {
    @EnvironmentObject var model:RecipeModel
    var body: some View {
        NavigationView {
            List(model.recipes) { r in
                NavigationLink {
                    MenuDetails(recipe: r)
                } label: {
                    VStack {
                        HStack{
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                                .font(.title2)
                                .foregroundColor(.pink)
                        }
                    }
                }
            }
            .navigationTitle("All of my recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuList()
    }
}
