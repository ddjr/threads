//
//  TabView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        HStack {
            Image(systemName: "house")
                .tabStyle()
            Spacer()
            Image(systemName: "magnifyingglass")
                .tabStyle()
            Spacer()
            Image(systemName: "square.and.pencil")
                .tabStyle()
            Spacer()
            Image(systemName: "heart")
                .tabStyle()
            Spacer()
            Image(systemName: "person")
                .tabStyle()
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 10.0)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
