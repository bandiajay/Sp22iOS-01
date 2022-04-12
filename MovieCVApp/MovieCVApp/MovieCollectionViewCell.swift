//
//  MovieCollectionViewCell.swift
//  MovieCVApp
//
//  Created by Ajay Bandi on 4/12/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignMovies(with movie: Movie){
        imageViewOutlet.image = movie.image
    }
}
