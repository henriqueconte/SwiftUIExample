//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Henrique Figueiredo Conte on 01/04/20.
//  Copyright © 2020 Henrique Figueiredo Conte. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0..<5) { item in
            MovieCell()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
