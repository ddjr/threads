//
//  ActivityView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI
import Foundation

struct ActivityView: View {
    var body: some View {
        NavigationStack {
            VStack {
                // MARK: Search
               
                // MARK: Activities
                ScrollView {
                    VStack {
                        ForEach((1...10), id: \.self) { i in
                            ActionView()
                            Divider()
                        }
                    }
                }
            }
        }
        .navigationTitle("Search")
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
