//
//  TabMenu.swift
//  MyRecipeApp
//
//  Created by Serezha on 01.04.2023.
//

import SwiftUI

struct TabMenu: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        
        TabView(selection: $tabIndex) {
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }.tag(0)
            
            MenuList()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Menu")
                    }
                }.tag(1)
            
        }.environmentObject(RecipeModel())
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        TabMenu()
    }
}
