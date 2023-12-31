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
                
                ZStack {
                    Color(.background)
                        .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack {
                        // Navigation bar
                        HStack {
                            NavigationLink(destination: ProfileView()) {
                                Image("profil-1")
                                    .resizable()
                                    .frame(width: 48, height: 48)
                                    .cornerRadius(24)
                            }
                                
                            Spacer()
                            
                            NavigationLink(destination: SettingsView()) {
                                ZStack {
                                    Circle()
                                        .fill(Color.backgroundElevated)
                                        .frame(width: 48)
                                    
                                    Image(systemName: "gearshape")
                                        .resizable()
                                        .foregroundStyle(.text)
                                        .frame(width: 24, height: 24)
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        
                        // App name
                        Text("Brewlog ✨")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.text)
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
                                    .foregroundStyle(.text)
                                    .padding(.leading, 20.0)
                                
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Text("Voir tout")
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(Color(.brand))
                                        .cornerRadius(16)
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.brandDark)
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
                                    .foregroundStyle(.text)
                                    .padding(.leading, 20.0)
                                
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Text("Voir tout")
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(Color(.brand))
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
                                    .foregroundStyle(.text)
                                
                                Spacer()
                                
                                Button {
                                    
                                } label: {
                                    Text("Voir tout")
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(Color(.brand))
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
            }
            .scrollIndicators(.hidden)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExploreView()
}
