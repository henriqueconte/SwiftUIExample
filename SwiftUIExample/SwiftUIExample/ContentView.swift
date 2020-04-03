//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 01/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var moviesList: [Movie] = [Movie(title: "The Platform",
                                     overview: "llfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflfl", averageRating: 3.5, posterPath: "dsaff", posterImage: nil),
     Movie(title: "The Platform",
     overview: "llfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflfl",
     averageRating: 3.5,
     posterPath: "dsaff",
     posterImage: nil),
     
    Movie(title: "The Platform",
    overview: "llfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflfl",
    averageRating: 3.5,
    posterPath: "dsaff",
    posterImage: nil),
    
    Movie(title: "The Platform",
    overview: "llfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflfl",
    averageRating: 3.5,
    posterPath: "dsaff",
    posterImage: nil),
    
    Movie(title: "The Platform",
    overview: "llfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflflllfsdlfkfklsdkflskdflfl",
    averageRating: 3.5,
    posterPath: "dsaff",
    posterImage: nil)]
    
    var network = ClientManager()
    
    
    init() {
        UITableView.appearance().separatorStyle = .none
    
        network.getPopularMoviesRequest { (moviesArray) in
            
        }
    }
    
    
    var body: some View {
        moviesTableView
    }
    
    var moviesTableView: some View {
        List (0..<moviesList.count) { count in
            
            if count == 0 {
//                MovieCell(movie: Movie(title: "novo filme", overview: "sem", averageRating: 0.0, posterPath: "", posterImage: nil))
                self.moviesCollectionView
            }
            else {
                MovieCell(movie: self.moviesList[count])
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
            }

        }
    }
    
    var moviesCollectionView: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
               HStack {
                
                ForEach(self.moviesList) { currentMovie in
                    MovieCell(movie: currentMovie)
                        .aspectRatio(contentMode: .fill)
                }
                
            }
        })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
