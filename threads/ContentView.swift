//
//  ContentView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NewsFeedView(posts: PreviewPosts)
            TabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
