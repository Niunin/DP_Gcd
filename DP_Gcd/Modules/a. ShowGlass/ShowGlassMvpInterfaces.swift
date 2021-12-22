//
//  ShowGlassMvpInterfaces.swift
//  DP_Gcd
//
//  Created by Niunin on 21.12.2021.
//  
//

import Foundation

// MARK: - Router protocol

protocol ShowGlassRouterProtocol: AnyObject {
    
    var entry: ShowGlassEntryPoint! { get }
    
    static func build() -> ShowGlassEntryPoint
    
    // MARK: methods
}

// MARK: - View protocol

protocol ShowGlassViewProtocol: AnyObject {
    
    var presenter: ShowGlassPresenterProtocol! { get set }
    
    // MARK: methods
}

// MARK: - Presenter protocol

protocol ShowGlassPresenterProtocol: AnyObject {
    
    var view: ShowGlassViewProtocol { get }
    var router: ShowGlassRouterProtocol? { get set }
    
    // MARK: methods
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
    
//    func buttonPressed<#Name#>()
//    func buttonPressed<#Name#>()
//    func viewRequested(<#Tap#>ActionForItemAt: IndexPath)
//    func viewRequested(<#Some#>ActionForItemAt: IndexPath)
//    func show<#ScreenName#>()
    
}
