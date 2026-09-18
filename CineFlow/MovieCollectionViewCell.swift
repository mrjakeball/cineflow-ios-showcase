import UIKit

final class MovieCollectionViewCell: UICollectionViewCell {

    static let reuseIdentifier = "MovieCell"

    private let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "film.fill")
        imageView.tintColor = .systemBlue
        imageView.backgroundColor = .tertiarySystemFill
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 12
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let yearLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13)
        label.textColor = .secondaryLabel
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let ratingLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 13, weight: .medium)
        label.textColor = .systemOrange
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }

    private func setupUI() {
        contentView.backgroundColor = .secondarySystemBackground
        contentView.layer.cornerRadius = 16
        contentView.clipsToBounds = true

        contentView.addSubview(posterImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(yearLabel)
        contentView.addSubview(ratingLabel)

        NSLayoutConstraint.activate([
            posterImageView.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: 10
            ),

            posterImageView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: 10
            ),

            posterImageView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -10
            ),

            posterImageView.heightAnchor.constraint(
                equalTo: posterImageView.widthAnchor,
                multiplier: 1.25
            ),

            titleLabel.topAnchor.constraint(
                equalTo: posterImageView.bottomAnchor,
                constant: 8
            ),

            titleLabel.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: 10
            ),

            titleLabel.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -10
            ),

            yearLabel.topAnchor.constraint(
                equalTo: titleLabel.bottomAnchor,
                constant: 4
            ),

            yearLabel.leadingAnchor.constraint(
                equalTo: titleLabel.leadingAnchor
            ),

            ratingLabel.centerYAnchor.constraint(
                equalTo: yearLabel.centerYAnchor
            ),

            ratingLabel.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor,
                constant: -10
            )
        ])
    }

    func configure(with movie: Movie) {
        titleLabel.text = movie.title
        yearLabel.text = "\(movie.year)"
        ratingLabel.text = "★ \(String(format: "%.1f", movie.rating))"
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        titleLabel.text = nil
        yearLabel.text = nil
        ratingLabel.text = nil
    }
}
