//
//  MovieCell.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 01/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import Foundation
import SwiftUI


struct MovieCell: View {
    
    let movie: Movie
    
    var body: some View {
        HStack() {
            
            Image("avengersPost")
                .cornerRadius(10)
            
          //  GeometryReader { fullView in
                
                VStack(alignment: .leading) {
                    Text(self.movie.title ?? "").bold()
                        .lineLimit(1)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                    
                    Text(self.movie.overview ?? "")
                        .lineLimit(3)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 20))
                        .foregroundColor(.gray)
                       // .frame(width: fullView.size.width, height: fullView.size.height / 2, alignment: .leading)
                    
                    self.ratingView
                }
         //   }
        }
    }
    
    var ratingView: some View {
        HStack {
            Image("starIcon")
            
            Text("\(movie.voteAverage ?? 0.0)")
                .foregroundColor(.gray)
        }
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(movie: Movie(title: "Avengers", overview: "blalblablablalbaalblabllabblalblalblbalbalblbalblbalblbalblbalablblab", voteAverage: 8.0, posterPath: "https://"))
    }
}
