//
//  ViewController.swift
//  Metflix
//
//  Created by 정명곤 on 2022/10/05.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    
    private let listTableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ContentsListTableViewCell.self, forCellReuseIdentifier: "ContentsListTableViewCell")
        return tableView
    }()
    
    private let safeArea: UIView = {
        var area = UIView()
        area.backgroundColor = .link
        return area
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        listTableView.dataSource = self
        listTableView.delegate = self
        
        
        
//        setSafeArea()
        
        setConstraint()
        
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
    
    private func setConstraint() {

        
//        self.view.addSubview(mainHeaderView)
//        mainHeaderView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 200)
        self.view.addSubview(listTableView)
        
//        mainHeaderView.snp.makeConstraints { view in
//            view.top.equalToSuperview()
//            view.left.right.equalToSuperview()
//        }
        
        listTableView.frame = view.bounds
        let headerView = MainHeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 200))
        listTableView.tableHeaderView = headerView
    }
    

}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContentsListTableViewCell", for: indexPath) as? ContentsListTableViewCell else { return UITableViewCell() }
        return cell
    }
    
}
