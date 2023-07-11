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
                Text("search")
            case Tab.post:
                Text("post")
            case Tab.activity:
                Text("activity")
            case Tab.profile:
                Text("profile")
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
