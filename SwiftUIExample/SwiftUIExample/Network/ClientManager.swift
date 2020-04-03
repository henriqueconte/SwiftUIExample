//
//  ClientManager.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 02/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import Foundation


struct ClientManager {
    
    func getPopularMoviesRequest(completion: @escaping ([Movie]) -> Void){
        var request = URLRequest(url: URL(string: "https://api.themoviedb.org/3/movie/popular?page=1&language=en-US&api_key=77d63fcdb563d7f208a22cca549b5f3e")!)
        
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            guard let dataResponse = data, error == nil else{
                print(error?.localizedDescription ?? "")
                return
            }
            do {
                let returnAPI = try JSONDecoder().decode(PageResults.self, from: dataResponse)
                
            } catch {
            print(error)
            }
        })
        
        dataTask.resume()
    }
    
    func preparePopularMoviesInformations() {
        
    }
    
}
