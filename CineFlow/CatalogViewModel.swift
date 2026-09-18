import Foundation

final class CatalogViewModel {

    private(set) var movies: [Movie] = [
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

    var numberOfMovies: Int {
        movies.count
    }

    func movie(at index: Int) -> Movie {
        movies[index]
    }
}
