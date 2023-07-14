//
//  ContentView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var activeTab = Tab.home
    @State private var ShowNewThreadView = false
    @State private var ShowReplyThreadView = false
    @State private var isMyProfile = false
    
    var body: some View {
        NavigationStack {
            VStack {
                switch activeTab {
                case Tab.home:
                    NewsFeedView(posts: PreviewPosts)
                case Tab.search:
                    SearchView()                    
                case Tab.activity:
                    ActivityView()
                case Tab.profile:
                    ProfileView(isMyProfile: isMyProfile)
                }
                TabView(activeTab: $activeTab, isPresented: $ShowNewThreadView)
            }
        }
        .sheet(isPresented: $ShowNewThreadView) {
            NewThreadView()
                .padding()
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
