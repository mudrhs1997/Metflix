//
//  ViewController.swift
//  Metflix
//
//  Created by 정명곤 on 2022/10/05.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private let safeArea: UIView = {
        var area = UIView()
        return area
    }()
    
    private let listTableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ContentsTableViewCell.self, forCellReuseIdentifier: "ContentsTableViewCell")
        return tableView
    }()
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.dataSource = self
        listTableView.delegate = self
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "netflix-logo"), style: .done, target: nil, action: nil)
        navigationItem.rightBarButtonItems = [UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: nil, action: nil), UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: nil, action: nil)]
        
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        
        
        self.view.addSubview(listTableView)
        listTableView.frame = view.bounds
        let headerView = MainHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 400))
        listTableView.tableHeaderView = headerView
        
    }
    
    func setSafeArea() {
        safeArea.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(safeArea)

        if #available(iOS 11, *) {
            let guide = view.safeAreaLayoutGuide
            safeArea.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
            safeArea.bottomAnchor.constraint(equalTo: guide.bottomAnchor).isActive = true
            safeArea.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
            safeArea.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true

        } else {
            safeArea.topAnchor.constraint(equalTo: topLayoutGuide.topAnchor).isActive = true
            safeArea.bottomAnchor.constraint(equalTo: bottomLayoutGuide.bottomAnchor).isActive = true
            safeArea.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            safeArea.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        }
    }
    
    
    

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.rowHeight
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContentsTableViewCell", for: indexPath) as? ContentsTableViewCell else { return UITableViewCell() }
        return cell
    }
    
}
