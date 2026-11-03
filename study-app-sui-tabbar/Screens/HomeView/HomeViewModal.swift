//
//  HomeViewModal.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import Foundation

class HomeViewModal {
    var cources: [UniversalBlockData] = [
        UniversalBlockData(blockBg: "#FED19C", title: "Design System Fundamental Figma", subTitle: "George Adam",
                           items: [
                            UniversalBlockDataItems(icon: .book, title: "5/10 Section"),
                            UniversalBlockDataItems(icon: .question, title: "0/35 Exercise")
                           ], status: "Ongoing", certificate: false, meeting: "", pdf: false),
        UniversalBlockData(blockBg: "#D3F1D9", title: "Leadership Fundamental", subTitle: "Eveline Charlos",
                           items: [
                            UniversalBlockDataItems(icon: .book, title: "15/15 Section"),
                            UniversalBlockDataItems(icon: .question, title: "45/45 Exercise")
                           ], status: "Completed", certificate: true, meeting: "", pdf: false),
        UniversalBlockData(blockBg: "#EEF4C2", title: "Learn HTML5 for Beginner", subTitle: "George Adam",
                           items: [
                            UniversalBlockDataItems(icon: .book, title: "5/10 Section"),
                            UniversalBlockDataItems(icon: .question, title: "35/35 Exercise")
                           ], status: "Completed", certificate: true, meeting: "", pdf: false)
    ]
    
    var webinars: [UniversalBlockData] = [
        UniversalBlockData(blockBg: "#D3F1D9", title: "Leadership Fundamental", subTitle: "Eveline Charlos",
                           items: [UniversalBlockDataItems(icon: .link, title: "https://meet.google.com/wmm-giue-qva")],
                           status: "", certificate: false, meeting: "July 9, 2024 | 12.00 PM", pdf: false),
        UniversalBlockData(blockBg: "#FED19C", title: "Design System Fundamental Figma", subTitle: "George Adam",
                           items: [UniversalBlockDataItems(icon: .link, title: "https://meet.google.com/wmm-giue-qva")],
                           status: "", certificate: false, meeting: "July 9, 2024 | 12.00 PM (Ended)", pdf: false),
    ]
    
    var eBooks: [UniversalBlockData] = [
        UniversalBlockData(blockBg: "#FED19C", title: "Design Thinking Vol 2", subTitle: "Eveline Charlos",
                           items: [], status: "", certificate: false, meeting: "", pdf: true),
        UniversalBlockData(blockBg: "#D3F1D9", title: "Learn HTML5 for Beginner", subTitle: "George Adam",
                           items: [], status: "", certificate: false, meeting: "", pdf: true),
    ]
    
    func getAllCources() -> [UniversalBlockData] {
        self.cources
    }
    
    func getAllWebinars() -> [UniversalBlockData] {
        self.webinars
    }
    
    func getAllEBooks() -> [UniversalBlockData] {
        self.eBooks
    }
}
