//
//  ShowglassTableViewCell.swift
//  DP_Gcd
//
//  Created by Niunin on 22.12.2021.
//

import UIKit

class ShowglassTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "ShowglassTableViewCellIdentifier"
    
    // MARK: properties
    
    // Views
    private let backgroundImageView = UIImageView()
    private let titleLabel = UILabel()
    private let plusButton = UIButton(type: .system)
    
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

private extension ShowglassTableViewCell {
    
    func setupViews() {
        setupSelf()
        setup(button: plusButton)
        setupConstraints()
    }
    
    func setupSelf() {
        contentView.addSubview(backgroundImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(plusButton)
    }
    
    func setup(button: UIButton) {
        let image = UIImage(systemName: "paintbrush.fill")
        
        button.setImage(image, for: .normal)
        button.contentMode = .scaleAspectFit
        button.tintColor = .red
        button.backgroundColor = .green
        
    }
    
    func setupConstraints() {
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        
        let cv = contentView
        let lms = contentView.layoutMarginsGuide
        
        let constraints = [
            backgroundImageView.topAnchor.constraint(equalTo: cv.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: cv.leadingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: cv.bottomAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: cv.trailingAnchor),
            backgroundImageView.heightAnchor.constraint(greaterThanOrEqualToConstant: 40),
            
            titleLabel.topAnchor.constraint(equalTo: lms.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: lms.leadingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: lms.bottomAnchor),
            
            plusButton.trailingAnchor.constraint(equalTo: cv.trailingAnchor),
            plusButton.bottomAnchor.constraint(equalTo: cv.bottomAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 40),
            plusButton.heightAnchor.constraint(equalToConstant: 40)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
