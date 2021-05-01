//
//  tabBarUI.swift
//  Plant-IOS
//
//  Created by Celia Herrera Ferreira on 30/04/2021.
//

import SwiftUI

struct tabBarUI: View {
    @State var selectedView = 1
    
    var body: some View {
        TabView(selection: $selectedView){
            ListUI()
                .tabItem {
                    Label("First", systemImage: "1.circle")
                }
                .tag(1)
            
            MapUI()
                .tabItem {
                    Label("Second", systemImage: "2.circle")
                }
                .tag(2)
            
        }
    }
}

struct tabBarUI_Previews: PreviewProvider {
    static var previews: some View {
        tabBarUI()
    }
}
