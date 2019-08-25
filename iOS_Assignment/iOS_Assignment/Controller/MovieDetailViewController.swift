//
//  MovieDetailViewController.swift
//  iOS_Assignment
//
//  Created by 김선우 on 8/25/19.
//  Copyright © 2019 Harry Kim. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    var movieInfo: Movie?
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieRatingLabel: UILabel!
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        movieTitleLabel.text = movieInfo?.title ?? ""
        movieRatingLabel.text = String(movieInfo?.rating ?? 0)
    }

}
