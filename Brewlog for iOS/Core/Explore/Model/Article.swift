//
//  Article.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 16/11/2023.
//

import Foundation

struct Article: Identifiable, Codable, Hashable {
    let id: String
    let title: String
    let date: String
    let imageUrl: String
    let content: String
}
