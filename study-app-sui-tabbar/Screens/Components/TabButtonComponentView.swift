//
//  TabButtonComponentView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 04.11.2026.
//

import SwiftUI

struct TabButtonComponentView: View {
    var imageIcon: ImageResource
    var title: String
    var active: Bool
    var currentPage: () -> ()
    
    var body: some View {
        Button {
            currentPage()
        } label: {
            ZStack {
                Rectangle()
                    .frame(width: 68, height: 54)
                    .foregroundStyle(active ? .limeCream : .appBg)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                
                VStack(spacing: 2) {
                    Image(imageIcon)
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(active ? .appBg : .limeCream)

                    Text(title)
                        .font(.system(size: 10, weight: .medium))
                        .foregroundStyle(active ? .appBg : .limeCream)
                }
            }
        }
    }
}
