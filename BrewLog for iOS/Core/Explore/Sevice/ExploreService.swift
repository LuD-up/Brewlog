//
//  ExploreService.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 16/11/2023.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [Beer] {
        return DeveloperPreview.shared.beers
    }
    
    func fetchListing() async throws -> [Article] {
        return DeveloperPreview.shared.articles
    }
}
