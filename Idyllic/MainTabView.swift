//
//  MainTabView.swift
//  Idyllic
//
//  Created by Max Zelikman on 5/6/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedTab = 0
    
    var body: some View{
        TabView (selection: $selectedTab){
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            ZStack {
                Color("bkColor").ignoresSafeArea()
                exercisePage()
            }
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Exercises")                }
                .tag(1)
            
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
             
        }
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}


struct exercisePage: View {
    var body: some View {
        VStack {
            Text("hello")
        }
    }
}
