//
//  BlockHorizontalView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import SwiftUI

struct BlockHorizontalView: View {
    let title: String = "Your Courses"
    let buttonTitle: String = "See more"
    let buttonIcon: String = "chevron.right"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(alignment: .top, spacing: 28) {
                Text(title)
                    .modifier(TextModifier(fontSize: AppConstants.Typography.titleContainer, fontWeight: .medium))
                    .lineLimit(2)
                
                Spacer()
                
                Button {
                    //
                } label: {
                    HStack(spacing: 8) {
                        Text(buttonTitle)
                            .font(.system(size: AppConstants.Typography.titleButtonArrow, weight: .medium))
                            .foregroundStyle(.limeCream)
                            .frame(maxWidth: .none)
                        
                        Image(systemName: buttonIcon)
                            .font(.system(size: AppConstants.Typography.titleButtonArrow, weight: .medium))
                            .foregroundStyle(.limeCream)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, AppConstants.Layout.offsetPage)
            
            ScrollView {
                HStack(spacing: 12) {
                    VStack(alignment: .leading) {
                        Text("www")
                    }
                }
            }
        }
    }
}
