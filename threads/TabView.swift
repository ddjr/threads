//
//  TabView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct TabView: View {
    @Binding var activeTab: Tab
    var body: some View {
        HStack {
            Image(systemName: "house")
                .tabStyle()
                .foregroundColor(activeTab == Tab.home ? .primary : .secondary)
                .onTapGesture {
                    activeTab = Tab.home
                }
                
            Spacer()
            Image(systemName: "magnifyingglass")
                .tabStyle()
                .foregroundColor(activeTab == Tab.search ? .primary : .secondary)
                .onTapGesture {
                    activeTab = Tab.search
                }
            Spacer()
            Image(systemName: "square.and.pencil")
                .tabStyle()
                .foregroundColor(activeTab == Tab.post ? .primary : .secondary)
                .onTapGesture {
                    activeTab = Tab.post
                }
            Spacer()
            Image(systemName: "heart")
                .tabStyle()
                .foregroundColor(activeTab == Tab.activity ? .primary : .secondary)
                .onTapGesture {
                    activeTab = Tab.activity
                }
            Spacer()
            Image(systemName: "person")
                .tabStyle()
                .foregroundColor(activeTab == Tab.profile ? .primary : .secondary)
                .onTapGesture {
                    activeTab = Tab.profile
                }
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 10.0)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(activeTab: .constant(Tab.home))
    }
}
