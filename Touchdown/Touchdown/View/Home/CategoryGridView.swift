//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 4/10/2565 BE.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }//: LOOP
                }//: SECTION
            }//: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }//: SCROLL
    }
}

// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
