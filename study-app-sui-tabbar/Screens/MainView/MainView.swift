//
//  MainView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import SwiftUI

struct MainView: View {
    @State var selectionPage: String = "course"
    
    var body: some View {
        TabView(selection: $selectionPage) {
            HomeView()
                .tag("home")
            
            ExploreView()
                .tag("explore")
            
            CourseView()
                .tag("course")
            
            CareerView()
                .tag("career")
            
            ProfileView()
                .tag("profile")
        }
    }
}
