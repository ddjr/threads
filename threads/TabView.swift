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
            Image(systemName: "house.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 24.0, maxHeight: 24.0)
                .fontWeight(.light)
            Spacer()
            Image(systemName: "magnifyingglass")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 24.0, maxHeight: 24.0)
                .fontWeight(.light)
            Spacer()
            Image(systemName: "square.and.pencil")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 24.0, maxHeight: 24.0)
                .fontWeight(.light)
            Spacer()
            Image(systemName: "heart")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 24.0, maxHeight: 24.0)
                .fontWeight(.light)
            Spacer()
            Image(systemName: "person")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 24.0, maxHeight: 24.0)
                .fontWeight(.light)
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
