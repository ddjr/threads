//
//  SearchView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            // MARK: Search
            SearchView()
            Text("Search")
            ScrollView {
                VStack {
                    ForEach(1...10, id: \.self) { i in
                        ActionView()
                        Divider()
                    }
                }
            }
        }
        .navigationTitle("Search")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
