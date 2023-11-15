//
//  ExploreView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 15/11/2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // Navigation bar
                    HStack {
                        Text("BrewLog ✨")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        NavigationLink(destination: ProfileView()) {
                            Image(systemName: "gear")
                                .foregroundStyle(.black)
                                .font(.title2)
                        }
                    }
                    .padding()
                    
                    // Search bar
                    SearchBar()
                    
                    // New beers list
                    VStack(alignment: .leading) {
                        Text("Nouveautés")
                            .font(.title)
                            .padding(.leading, 20.0)
							
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(alignment: .top, spacing: 10) {
                                ForEach(0 ... 10, id: \.self) { listing in
                                    NavigationLink (value: listing) {
                                        ListingItemView()
                                    }
                                }
                            }
                            .padding()
                        }
                        .navigationDestination(for: Int.self) { listing in
                            ListingDetailView()
                        }
                    }
                    
                    // Best beers reviews
                    VStack(alignment: .leading) {
                        Text("Meilleurs avis")
                            .font(.title)
                            .padding(.leading, 20.0)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(alignment: .top, spacing: 10) {
                                ForEach(0 ... 10, id: \.self) { listing in
                                    NavigationLink (value: listing) {
                                        ListingItemView()
                                    }
                                }
                            }
                            .padding()
                        }
                        .navigationDestination(for: Int.self) { listing in
                            ListingDetailView()
                        }
                    }
                    .padding(.top, 80.0)
                    
                    // Lastest news
                    VStack(alignment: .leading) {
                        Text("Derniers articles")
                            .font(.title)
                            .padding(.leading, 20.0)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(alignment: .top, spacing: 10) {
                                ForEach(0 ... 10, id: \.self) { listing in
                                    NavigationLink (value: listing) {
                                        ListingItemView()
                                    }
                                }
                            }
                            .padding()
                        }
                        .navigationDestination(for: Int.self) { listing in
                            ListingDetailView()
                        }
                    }
                    .padding(.top, 80.0)
                }
            }
            .scrollIndicators(.never)
        }
    }
}

#Preview {
    ExploreView()
}
