//
//  MainView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import SwiftUI

enum TabPages: Hashable {
    case home
    case explore
    case course
    case career
    case profile
}

struct MainView: View {
    @State var selectionPage: TabPages = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage) {
                HomeView()
                    .tag(TabPages.home)
                
                ExploreView()
                    .tag(TabPages.explore)
                
                CourseView()
                    .tag(TabPages.course)
                
                CareerView()
                    .tag(TabPages.career)
                
                ProfileView()
                    .tag(TabPages.profile)
            }
            
            HStack(spacing: 8) {
                TabButtonComponentView(imageIcon: .iconHome, title: "Home", active: self.selectionPage == TabPages.home) {
                    self.selectionPage = TabPages.home
                }
                TabButtonComponentView(imageIcon: .iconPlanet, title: "Explore", active: self.selectionPage == TabPages.explore) {
                    self.selectionPage = TabPages.explore
                }
                TabButtonComponentView(imageIcon: .iconBook, title: "My Course", active: self.selectionPage == TabPages.course) {
                    self.selectionPage = TabPages.course
                }
                TabButtonComponentView(imageIcon: .iconCase, title: "Career", active: self.selectionPage == TabPages.career) {
                    self.selectionPage = TabPages.career
                }
                TabButtonComponentView(imageIcon: .iconUser, title: "Profile", active: self.selectionPage == TabPages.profile) {
                    self.selectionPage = TabPages.profile
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}
