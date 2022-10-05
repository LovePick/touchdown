//
//  Shop.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 6/10/2565 BE.
//

import Foundation
import SwiftUI

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
