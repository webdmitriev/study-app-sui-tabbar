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
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    // Duo в разложенном виде → default tabbar, кастомный скрыт
    private var isRegularLayout: Bool {
        UIDevice.current.userInterfaceIdiom == .phone && horizontalSizeClass == .regular
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage) {
                HomeView()
                    .mainTabBar(visible: isRegularLayout)
                    .tag(TabPages.home)
                    .tabItem { Label("Home", image: .iconHome) }

                ExploreView()
                    .mainTabBar(visible: isRegularLayout)
                    .tag(TabPages.explore)
                    .tabItem { Label("Explore", image: .iconPlanet) }

                CourseView()
                    .mainTabBar(visible: isRegularLayout)
                    .tag(TabPages.course)
                    .tabItem { Label("My Course", image: .iconBook) }

                CareerView()
                    .mainTabBar(visible: isRegularLayout)
                    .tag(TabPages.career)
                    .tabItem { Label("Career", image: .iconCase) }

                ProfileView()
                    .mainTabBar(visible: isRegularLayout)
                    .tag(TabPages.profile)
                    .tabItem { Label("Profile", image: .iconUser) }
            }
            
            if !isRegularLayout {
                HStack(spacing: 8) {
                    TabButtonComponentView(imageIcon: .iconHome, title: "Home", active: selectionPage == .home) {
                        selectionPage = .home
                    }
                    TabButtonComponentView(imageIcon: .iconPlanet, title: "Explore", active: selectionPage == .explore) {
                        selectionPage = .explore
                    }
                    TabButtonComponentView(imageIcon: .iconBook, title: "My Course", active: selectionPage == .course) {
                        selectionPage = .course
                    }
                    TabButtonComponentView(imageIcon: .iconCase, title: "Career", active: selectionPage == .career) {
                        selectionPage = .career
                    }
                    TabButtonComponentView(imageIcon: .iconUser, title: "Profile", active: selectionPage == .profile) {
                        selectionPage = .profile
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
//        .safeAreaInset(edge: .bottom) {
//            if !isRegularLayout { Color.clear.frame(height: 0) }
//        }
    }
}
