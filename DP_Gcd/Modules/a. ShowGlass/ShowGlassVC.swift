//
//  ShowGlassVC.swift
//  DP_Gcd
//
//  Created by Niunin on 21.12.2021.
//  
//

import UIKit

// MARK: - Object

class ShowGlassViewController: UITableViewController, ShowGlassViewProtocol {
      
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
        setupTableView()
        setupConstraints()
    }
    
    func setupSelf() {
    }
    
    func setupTableView() {
        tableView.register(
            ShowglassTableViewCell.self,
            forCellReuseIdentifier: ShowglassTableViewCell.reuseIdentifier
        )
        tableView.backgroundColor = .lightGray
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
    }
    
    func setupConstraints() {
        
    }
    
}

// MARK: - UI TableView Data Source

extension ShowGlassViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ShowglassTableViewCell.reuseIdentifier) as! ShowglassTableViewCell
        let params = ShowglassModel(prefix: "🎉", title: "Add your first image")
        
        cell.plusButton.addTarget(self, action: #selector(plusPushed(_:)), for: .touchUpInside)
        cell.configure(params)
        return cell

    }
    
    @IBAction func plusPushed(_ sender: UIButton) {
        print(" plus pushed")
        presenter.buttonPressedPlus()
    }
    
}
