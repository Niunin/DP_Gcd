//
//  ShowglassTableViewCell.swift
//  DP_Gcd
//
//  Created by avito on 22.12.2021.
//

import UIKit

class ShowglassTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "ShowglassTableViewCellIdentifier"
    
    // MARK: properties
    
    // Views
    private let backgroundImageView = UIImageView()
    private let titleLabel = UILabel()
    
    // Model
    private var model: ShowglassModel?
    
    // MARK: life cycle
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: configure
    func configure(_ params: ShowglassModel) {
        titleLabel.text = "\(params.prefix): \(params.title)"
        backgroundImageView.image = params.image
        setupViews()
    }
    
}

// MARK: - Setup Views

extension ShowglassTableViewCell {
    
    func setupViews() {
        setupSelf()
        setupConstraints()
    }
    
    func setupSelf() {
        contentView.addSubview(backgroundImageView)
        contentView.addSubview(titleLabel)
    }
    
    func setupConstraints() {
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let cv = contentView
        let lms = contentView.layoutMarginsGuide
        
        let constraints = [
            backgroundImageView.topAnchor.constraint(equalTo: cv.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: cv.leadingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: cv.bottomAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: cv.trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: lms.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: lms.leadingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: lms.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
