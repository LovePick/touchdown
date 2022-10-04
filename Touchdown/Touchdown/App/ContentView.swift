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
                    
                
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
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
