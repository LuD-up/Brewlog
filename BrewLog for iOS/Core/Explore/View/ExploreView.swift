//
//  ExploreView.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 15/11/2023.
//

import SwiftUI

struct ExploreView: View {
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    // Navigation bar
                    HStack {
                        Image(systemName: "person")
                        
                        Spacer()
                        
                        NavigationLink(destination: ProfileView()) {
                            ZStack {
                                Circle()
                                    .fill(Color.backgroundElevated)
                                    .frame(width: 48)
                                
                                Image(systemName: "gearshape")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    
                    // App name
                    Text("BrewLog ✨")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    
                    // Search bar
                    SearchBar()
                        .padding(.vertical, 20)
                    
                    // New beers list
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Nouveautés")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.leading, 20.0)
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Text("Voir tout")
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .background(Color(.caca))
                                    .cornerRadius(16)
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .padding()
                            }
                        }
							
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(alignment: .top, spacing: 16) {
                                ForEach(viewModel.beers) { listing in
                                    NavigationLink (value: listing) {
                                        ListingBeerView(listing: listing)
                                    }
                                }
                            }
                            .padding()
                        }
                        .navigationDestination(for: Beer.self) { listing in
                            BeerDetailView(listing: listing)
                        }
                    }
                    
                    // Incoming events
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Événements à venir")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.leading, 20.0)
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Text("Voir tout")
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .background(Color(.caca))
                                    .cornerRadius(16)
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .padding()
                            }
                        }
            
                    }
                    .padding(.top, 80.0)
                    
                    // Lastest news
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Actualité")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Text("Voir tout")
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .background(Color(.caca))
                                    .cornerRadius(16)
                                    .font(.callout)
                                    .fontWeight(.semibold)
                            }
                        }
                        .padding(.horizontal, 20)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack(alignment: .top, spacing: 16) {
                                ForEach(viewModel.articles) { listing in
                                    NavigationLink (value: listing) {
                                        ListingArticleView(listing: listing)
                                    }
                                }
                            }
                            .padding()
                        }
                        .navigationDestination(for: Article.self) { listing in
                            ArticleDetailView(listing: listing)
                        }
                    }
                    .padding(.vertical, 80.0)
                }
            }
            .background(.bgPrimary)
        }
        .scrollIndicators(.hidden)
        .foregroundStyle(.black)
    }
}

#Preview {
    ExploreView()
}
