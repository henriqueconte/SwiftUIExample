//
//  ClientManager.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 02/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import Foundation


final class ClientManager {
    
    func getMoviesRequest(urlPath: String, completion: @escaping ([Movie]) -> Void){
        
        var request = URLRequest(url: URL(string: urlPath)!)
        
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            guard let dataResponse = data, error == nil else{
                print(error?.localizedDescription ?? "")
                return
            }
            do {
                let returnAPI = try JSONDecoder().decode(PageResults.self, from: dataResponse)
                
                let moviesList = returnAPI.results
                
                completion(moviesList ?? [])
                
            } catch {
            print(error)
            }
        })
        
        dataTask.resume()
    }
    
}
