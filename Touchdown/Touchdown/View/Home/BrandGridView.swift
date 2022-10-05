//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 5/10/2565 BE.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }//: GRID
            .frame(height: 200)
            .padding(15)
        }//: SCROLL
    }
}

// MARK: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
