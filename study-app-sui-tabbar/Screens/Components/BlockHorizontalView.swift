//
//  BlockHorizontalView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import SwiftUI

struct BlockHorizontalView: View {
    let title: String
    let buttonTitle: String
    let buttonIcon: String
    
    let items: [UniversalBlockData]
    
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
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(items) { item in
                        UniversalBlockView(item: item)
                    }
                }
                .padding(.horizontal, AppConstants.Layout.offsetPage)
            }
        }
    }
}
