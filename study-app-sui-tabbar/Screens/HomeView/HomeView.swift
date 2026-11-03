//
//  HomeView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import SwiftUI

struct HomeView: View {
    let vm = HomeViewModal()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 32) {
                VStack {
                    HeaderComponentView()
                }
                .padding(.horizontal, AppConstants.Layout.offsetPage)
                
                BlockHorizontalView(title: "Your Courses",
                                    buttonTitle: "See more",
                                    buttonIcon: "chevron.right",
                                    items: self.vm.getAllCources())
                
                BlockHorizontalView(title: "Webinars",
                                    buttonTitle: "See more",
                                    buttonIcon: "chevron.right",
                                    items: self.vm.getAllWebinars())
                
                BlockHorizontalView(title: "E-Book",
                                    buttonTitle: "See more",
                                    buttonIcon: "chevron.right",
                                    items: self.vm.getAllEBooks())
            }
        }
        .background(.appBg)
    }
}
