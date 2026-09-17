//
//  CatalogViewModel.swift
//  CineFlow
//
//  Created by Aleshka on 17.09.2026.
//

import Foundation

final class CatalogViewModel {

    let movies: [Movie] = [
        Movie(
            id: 1,
            title: "Interstellar",
            year: 2014,
            rating: 8.7
        ),

        Movie(
            id: 2,
            title: "Dune: Part Two",
            year: 2024,
            rating: 8.5
        ),

        Movie(
            id: 3,
            title: "The Dark Knight",
            year: 2008,
            rating: 9.0
        )
    ]
}
