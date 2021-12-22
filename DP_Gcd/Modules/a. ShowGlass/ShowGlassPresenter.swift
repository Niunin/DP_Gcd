//
//  ShowGlassPresenter.swift
//  DP_Gcd
//
//  Created by Niunin on 21.12.2021.
//  
//

import Foundation

// MARK: - Object

class ShowGlassPresenter: ShowGlassPresenterProtocol {
    
    // MARK: properties
    
    private(set) var view: ShowGlassViewProtocol
    var router: ShowGlassRouterProtocol?
    
    // MARK: inint
    
    required init(view: ShowGlassViewProtocol) {
        self.view = view
    }
    
    // MARK: mvp presenter protocol conformance
    
    func viewDidLoad() {
        
    }
    
    func viewWillAppear() {
        
    }
    
    func viewWillDisappear() {
        
    }
    
    func buttonPressedPlus() {
        router?.showImagePicker()
    }
    
}
