//
//  ExploreViewModel.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 16/11/2023.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var beers = [Beer]()
    @Published var articles = [Article]()

    private let service: ExploreService
    
    init(service: ExploreService){
        self.service = service
        
        Task {
            await fetchListings()
        }
    }
    
    func fetchListings() async {
        do {
            self.beers = try await service.fetchListing()
        } catch {
            print("DEBUG: Failed to fetch beers with errror: \(error.localizedDescription)")
        }
        
        do {
            self.articles = try await service.fetchListing()
        } catch {
            print("DEBUG: Failed to fetch articles with errror: \(error.localizedDescription)")
        }
    }
}
