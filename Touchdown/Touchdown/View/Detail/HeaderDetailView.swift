//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 5/10/2565 BE.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    let product: Product
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
                .foregroundColor(.white)
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
            
        }//: VSTAACK
    }
}

// MARK: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
