//
//  HeaderComponentView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import SwiftUI

struct HeaderComponentView: View {
    var title: String

    var body: some View {
        Text(title)
            .modifier(TextModifier(fontSize: AppConstants.Typography.header, fontWeight: .medium))
            .lineHeight(.exact(points: AppConstants.Typography.header * 1.4))
    }
}
