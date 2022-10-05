//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 5/10/2565 BE.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                
            // HEADER
            HeaderDetailView(product: product)
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView(product: product)
                .padding(.horizontal)
            
            // DETAIL BOTTOM PART
            
            // RATINGS + SIZES
            
            // DESCRIPTION
            
            // QUANTITY + FAVOURITE
            
            // ADD TO CART
            Spacer()
            
        }//: VSTACK
        .background(
            Color(red: product.red, green: product.green, blue: product.blue)
        )
       
    }
}

// MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: sampleProduct)
//            .previewLayout(.fixed(width: 375, height: 812))
    }
}
