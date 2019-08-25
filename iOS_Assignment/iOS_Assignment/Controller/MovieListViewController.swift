//
//  MovieListViewController.swift
//  iOS_Assignment
//
//  Created by 김선우 on 8/25/19.
//  Copyright © 2019 Harry Kim. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MovieListViewController: UIViewController {

    private let identifier = MovieInfoCell.identifier
    var movieList: [Movie] = []
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            let nib = UINib(nibName: identifier, bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: identifier)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
 
}

extension MovieListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        guard let movieInfoCell = cell as? MovieInfoCell else { return cell }
        
        let movieInfo = movieList[indexPath.row]
        
        movieInfoCell.titleLabel.text = movieInfo.title ?? ""
        movieInfoCell.detailLabel.text = String(movieInfo.rating ?? 0)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let viewController = storyboard?.instantiateViewController(withIdentifier: "MovieDetailViewController") as? MovieDetailViewController {
            viewController.movieInfo = movieList[indexPath.row]
            
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
}
