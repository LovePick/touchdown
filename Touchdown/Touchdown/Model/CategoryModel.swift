//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Supapon Pucknavin on 4/10/2565 BE.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
