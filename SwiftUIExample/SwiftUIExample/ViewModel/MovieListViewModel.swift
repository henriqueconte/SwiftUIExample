//
//  MovieListViewModel.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 10/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import Foundation
import Combine
import SwiftUI


final class MovieListViewModel: ObservableObject {
    
    private var network = ClientManager()
    
    var popularMovies = [Movie]() {
        didSet {
            didChange.send(self)
        }
    }
    
    var playingNowMovies = [Movie]() {
        didSet {
            didChange.send(self)
        }
    }
    
    var upcomingMovies = [Movie]() {
        didSet {
            didChange.send(self)
        }
    }
    
    init() {
        fetchUpcomingMovies()
        fetchPopularMovies()
        fetchPlayingNowMovies()
    }
    
    let didChange = PassthroughSubject<MovieListViewModel,Never>()
    
    private func fetchPopularMovies() {
        network.getMoviesRequest(urlPath: "https://api.themoviedb.org/3/movie/popular?page=1&language=en-US&api_key=77d63fcdb563d7f208a22cca549b5f3e") { (moviesArray) in
            self.popularMovies = moviesArray
        }
    }
    
    private func fetchPlayingNowMovies() {
        network.getMoviesRequest(urlPath: "https://api.themoviedb.org/3/movie/now_playing?api_key=77d63fcdb563d7f208a22cca549b5f3e&language=en-US&page=1") { (moviesArray) in
            self.playingNowMovies = moviesArray
        }
    }
    
    private func fetchUpcomingMovies() {
        network.getMoviesRequest(urlPath: "https://api.themoviedb.org/3/movie/upcoming?api_key=77d63fcdb563d7f208a22cca549b5f3e&language=en-US&page=1") { (moviesArray) in
            self.upcomingMovies = moviesArray
        }
    }
    
}
