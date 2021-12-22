//
//  ShowGlassRouter.swift
//  DP_Gcd
//
//  Created by Niunin on 21.12.2021.
//  
//

import Foundation

import UIKit

typealias ShowGlassEntryPoint = ShowGlassViewProtocol & UIViewController

class ShowGlassRouter: ShowGlassRouterProtocol {
    
    weak var entry: ShowGlassEntryPoint!
    
    init(entry: ShowGlassEntryPoint) {
        self.entry = entry
    }
    
    // MARK: build
    
    static func build () -> ShowGlassEntryPoint {
        
        let view = ShowGlassViewController()
        let router = ShowGlassRouter(entry: view)
        let presenter = ShowGlassPresenter(view: view)
        
        view.presenter = presenter
        presenter.router = router
        
        return view as ShowGlassEntryPoint
    }
    
    // MARK: mvp router protocol conformance
    
    func showImagePicker() {
        let viewController = UIImagePickerController()
        viewController.sourceType = .photoLibrary
        viewController.modalPresentationStyle = .formSheet // .formSheet
        viewController.modalTransitionStyle = .coverVertical
        entry.present(viewController, animated: true, completion: nil)
    }
    
}
