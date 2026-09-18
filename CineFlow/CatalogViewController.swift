import UIKit

final class CatalogViewController: UIViewController {

    private let viewModel = CatalogViewModel()

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupCollectionView()
    }

    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .systemBackground
        collectionView.alwaysBounceVertical = true

        guard let layout = collectionView.collectionViewLayout
                as? UICollectionViewFlowLayout else {
            return
        }

        // Важно:
        // отключаем автоматическое изменение размера ячеек
        layout.estimatedItemSize = .zero

        layout.minimumInteritemSpacing = 12
        layout.minimumLineSpacing = 16

        layout.sectionInset = UIEdgeInsets(
            top: 12,
            left: 8,
            bottom: 24,
            right: 8
        )
    }
}


// MARK: - Data Source

extension CatalogViewController: UICollectionViewDataSource {

    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {

        return viewModel.numberOfMovies
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: MovieCollectionViewCell.reuseIdentifier,
            for: indexPath
        ) as? MovieCollectionViewCell else {

            return UICollectionViewCell()
        }

        let movie = viewModel.movie(at: indexPath.item)

        cell.configure(with: movie)

        return cell
    }
}


// MARK: - Collection View

extension CatalogViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {

        guard let layout = collectionViewLayout
                as? UICollectionViewFlowLayout else {
            return .zero
        }

        let leftInset = layout.sectionInset.left
        let rightInset = layout.sectionInset.right
        let spacing = layout.minimumInteritemSpacing

        let availableWidth =
            collectionView.bounds.width
            - leftInset
            - rightInset
            - spacing

        let width = floor(availableWidth / 2)

        return CGSize(
            width: width,
            height: width * 1.8
        )
    }

    func collectionView(
        _ collectionView: UICollectionView,
        didSelectItemAt indexPath: IndexPath
    ) {

        let movie = viewModel.movie(at: indexPath.item)

        print("Открываем: \(movie.title)")

        performSegue(
            withIdentifier: "showMovie",
            sender: movie
        )
    }
}
