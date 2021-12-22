//
//  ShowGlassVC.swift
//  DP_Gcd
//
//  Created by Niunin on 21.12.2021.
//  
//

import UIKit

// MARK: - Object

class ShowGlassViewController: UIViewController, ShowGlassViewProtocol {
    
    // MARK: properties
    
    var presenter: ShowGlassPresenterProtocol!
    
    // MARK: lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    // MARK: mvp view protocol conformance

}

// MARK: - Setup Views

private extension ShowGlassViewController {
    
    func setupViews() {
        setupSelf()
        setupConstraints()
    }
    
    func setupSelf() {
        
    }
    
    func setupConstraints() {
        
    }
    
}
