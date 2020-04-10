//
//  ImageDownload.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 10/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import Foundation
import UIKit


extension String {

    func getImageFromMoviePath() -> UIImage {
        let url = URL(string: "https://image.tmdb.org/t/p/w92" + self) ?? URL(fileURLWithPath: "")
        let imageData = (try? Data(contentsOf: url)) ?? Data()
        
        if let image = UIImage(data: imageData) {
            return image
        } else {
            return UIImage()
        }
    }
    
}
