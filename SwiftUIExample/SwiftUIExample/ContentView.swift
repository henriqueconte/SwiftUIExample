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
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    
    var body: some View {
        moviesTableView
    }
    
    var moviesTableView: some View {
        List (0..<moviesList.count) { movie in
            MovieCell(movie: self.moviesList[movie])
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
