//
//  UniversalBlockView.swift
//  study-app-sui-tabbar
//
//  Created by Олег Дмитриев on 03.11.2026.
//

import SwiftUI

struct UniversalBlockView: View {
    let item: UniversalBlockData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                    .modifier(TextModifier(fontSize: AppConstants.Typography.titleCard, fontWeight: .bold, textColor: .appBg))

                Text(item.subTitle)
                    .modifier(TextModifier(fontSize: AppConstants.Typography.titleCard, textColor: .appBg))
            }
            
            HStack(spacing: 6) {
                ForEach(item.items) { el in
                    HStack(spacing: 8) {
                        Image(systemName: el.icon.rawValue)
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.appBg)
                        
                        Text(el.title)
                            .font(.system(size: 13, weight: .regular))
                            .foregroundStyle(.appBg)
                    }
                }
            }
            
            HStack(spacing: 8) {
                if !item.status.isEmpty {
                    Text(item.status)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 14)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(Color(hex: item.blockBg))
                        .background(.appBg)
                        .clipShape(RoundedRectangle(cornerRadius: .infinity))
                }
                
                if item.certificate {
                    Text("Download Certificate")
                        .padding(.vertical, 6)
                        .padding(.horizontal, 14)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.appBg)
                        .background(.clear)
                        .clipShape(RoundedRectangle(cornerRadius: .infinity))
                        .overlay {
                            RoundedRectangle(cornerRadius: .infinity)
                                .stroke(lineWidth: 1)
                        }
                }
                
                if !item.meeting.isEmpty {
                    HStack(spacing: 6) {
                        Image(systemName: "clock.fill")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(Color(hex: item.blockBg))
                        
                        Text(item.meeting)
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(Color(hex: item.blockBg))
                    }
                    .padding(.vertical, 6)
                    .padding(.horizontal, 14)
                    .background(.appBg)
                    .clipShape(RoundedRectangle(cornerRadius: .infinity))
                }
                
                if item.pdf {
                    Text("Download E-Book (PDF)")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 14)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.appBg)
                        .background(.clear)
                        .clipShape(RoundedRectangle(cornerRadius: .infinity))
                        .overlay {
                            RoundedRectangle(cornerRadius: .infinity)
                                .stroke(lineWidth: 1)
                        }
                }
            }
        }
        .frame(width: 300)
        .padding(12)
        .background(Color(hex: item.blockBg))
        .clipShape(RoundedRectangle(cornerRadius: AppConstants.Layout.brs))
    }
}
