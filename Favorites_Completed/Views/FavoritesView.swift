//
// FavoritesView.swift : Favorites
//
// Copyright © 2025 Auburn University.
// All Rights Reserved.


import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favorites: FavoritesViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.cities.indices, id: \.self) {index in
                    if favorites.cities[index].isFavorite {
                        CityCardView(city: favorites.cities[index])
                    }
                }
                
                
                ForEach(favorites.hobbies.indices, id: \.self) {index in
                    if favorites.hobbies[index].isFavorite {
                        HobbyRowView(hobby: favorites.hobbies[index])
                    }
                }
                
             
                
                ForEach(favorites.books.indices, id: \.self) {index in
                    if favorites.books[index].isFavorite {
                        BookRowView(book: favorites.books[index])
                    }
                }



            }
        }
    }
}

#Preview {
    FavoritesView()
}


//for index in items.indices {
//    items[index].isFavorite = false
//}
//ForEach(favorites.filteredCities(searchText: searchText)) { city in
//    CityCardView(city: city)
//}
