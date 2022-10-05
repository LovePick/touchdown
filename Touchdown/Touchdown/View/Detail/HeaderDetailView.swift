//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 5/10/2565 BE.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
                .foregroundColor(.white)
            
            Text(shop.selectedProduct?.name ??  sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
            
        }//: VSTAACK
    }
}

// MARK: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
