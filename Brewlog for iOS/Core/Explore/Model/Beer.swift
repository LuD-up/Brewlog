//
//  Listing.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 16/11/2023.
//

import Foundation

struct Beer: Identifiable, Codable, Hashable {
    let id: String
    let name: String
    let brewery: String
    let imageUrl: String
    let abv: String
    let type: String
    let description: String
}


