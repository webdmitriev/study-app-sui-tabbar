//
//  HomeView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 32) {
                VStack {
                    HeaderComponentView()
                }
                .padding(.horizontal, AppConstants.Layout.offsetPage)
                
                BlockHorizontalView()
            }
        }
        .background(.appBg)
    }
}
