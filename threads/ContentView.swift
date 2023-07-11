//
//  ContentView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var activeTab = Tab.home
    var body: some View {
        VStack {
            switch activeTab {
            case Tab.home:
               NewsFeedView(posts: PreviewPosts)
            case Tab.search:
                SearchView()
            case Tab.post:
                Text("post")
                    .frame(maxHeight: .infinity)
            case Tab.activity:
                ActivityView()
            case Tab.profile:
                ProfileView()
            }
            TabView(activeTab: $activeTab)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
