//
//  UniversalBlockData.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import Foundation

enum UniversalBlockDataItemsIcons: String {
    case book = "book.fill"
    case question = "questionmark.app.fill"
    case link = "link"
}

struct UniversalBlockData: Identifiable {
    let id: String = UUID().uuidString
    let blockBg: String
    
    let title: String
    let subTitle: String
    
    let items: [UniversalBlockDataItems]
    let status: String
    let certificate: Bool
    let meeting: String
    let pdf: Bool
}

struct UniversalBlockDataItems: Identifiable {
    let id: String = UUID().uuidString
    let icon: UniversalBlockDataItemsIcons
    let title: String
}
