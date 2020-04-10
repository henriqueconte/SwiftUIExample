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
    
    var isHeaderActive: Bool = false
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        List {
            Section(header: Text("Playing Now")) {
                moviesCollectionView
            }
            
            Section(header: Text("Popular Movies")) {
                moviesTableView
            }
        }
    }
    
    var moviesTableView: some View {

        ForEach(0..<self.moviesModel.popularMovies.count) { count in
            MovieCell(movie: self.moviesModel.popularMovies[count])
            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
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
