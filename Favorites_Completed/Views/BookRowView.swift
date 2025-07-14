//
//  BookRowView.swift
//  Favorites_Completed
//
//  Created by Thomas Bowman on 7/14/25.
//

import SwiftUI

struct BookRowView: View {
    
    let book: BookModel
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                
                Text(book.bookTitle)
                    .font(.title2)
                //Spacer()
                Text(book.bookAuthor)
                    .font(.body)
            }
            Spacer()
            
            Button(action: {
                favorites.toggleFavoriteBook(book: book)
            }) {
                Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                    .foregroundStyle(book.isFavorite ? .red : .gray)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    BookRowView(book: BookModel(id: 1, bookTitle: "To kill a mockingbird", bookAuthor: "Harper Lee"))
}
