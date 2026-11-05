//
//  View.ext.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 05.11.2026.
//

import SwiftUI

extension View {
    func mainTabBar(visible: Bool) -> some View {
        self.toolbar(visible ? .visible : .hidden, for: .tabBar)
    }
}
