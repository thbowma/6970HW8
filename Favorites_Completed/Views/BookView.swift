//
//  BookView.swift
//  Favorites_Completed
//
//  Created by Thomas Bowman on 7/14/25.
//

import SwiftUI

struct BookView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.filteredBooks(searchText: searchText)) { book in
                    BookRowView(book: book)
                }
            }
            .padding()
        }
    }
}
