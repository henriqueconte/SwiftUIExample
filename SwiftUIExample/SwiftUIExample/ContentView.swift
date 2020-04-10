//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 01/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var moviesModel : MovieListViewModel = MovieListViewModel()
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    
    var body: some View {
        moviesTableView
    }
    
    var moviesTableView: some View {
        List(0..<moviesModel.popularMovies.count + 1) { count in
            
            if count == 0 {
                self.moviesCollectionView
            }
            else {
                MovieCell(movie: self.moviesModel.popularMovies[count - 1])
                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
    
    var moviesCollectionView: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            
            HStack {
                ForEach(0..<self.moviesModel.playingNowMovies.count) { count in

                    MovieCell(movie: self.moviesModel.playingNowMovies[count])
                        .frame(width: 300, height: 200, alignment: .center)
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
