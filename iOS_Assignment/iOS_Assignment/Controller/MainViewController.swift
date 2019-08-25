//
//  MainViewController.swift
//  iOS_Assignment
//
//  Created by 김선우 on 8/25/19.
//  Copyright © 2019 Harry Kim. All rights reserved.
//

import UIKit
import Alamofire
import RxCocoa
import RxSwift

class MainViewController: UIViewController {
    
    private let disposeBag: DisposeBag = .init()
    
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.rx.tap.asDriver()
            .drive(onNext: callMovieAPI)
            .disposed(by: disposeBag)
    }
    
    override func viewDidAppear(_ animated: Bool) {
 
    }
 
}

extension MainViewController {
    private func callMovieAPI() {
        guard
            let ratingString = textField.text,
            let rating = Int(ratingString) else {
                return
        }
        
        nextButton.isEnabled = false
        
        let request = MovieRquest(rating: rating)
        AF.request(NetworkManager.baseURL, parameters: request.dictionary)
            .responseData { response in
                
                defer {
                    self.nextButton.isEnabled = true
                }
                
                guard let data = response.data else { return }
 
                guard
                    let movieResponse = try? JSONDecoder().decode(MovieResponse.self, from: data),
                    let movieList = movieResponse.data?.movies
                    else { return }
                
                if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "MovieListViewController") as? MovieListViewController {
                    viewController.movieList = movieList
                    self.navigationController?.pushViewController(viewController, animated: true)
                }
        }
        
        
        
    }
    
}

