//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 4/10/2565 BE.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        TabView{
            ForEach(players){ player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - PREVIEW
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
