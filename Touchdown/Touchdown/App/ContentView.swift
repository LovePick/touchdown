//
//  ContentView.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 4/10/2565 BE.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack (spacing: 0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x:0, y: 5)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        
                        
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        // MARK: - PRODUCT
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }//: LOOP
                            
                        }//: GRID
                        .padding(15)
                        
                        // MARK: - BRAND
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        
                        FooterView()
                            .padding(.horizontal)
                    }//: VSTACK
                }//: SCROLL
                
            }//: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            
        }//: ZSTACK
        //        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
