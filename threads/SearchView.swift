//
//  SearchView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1...10, id: \.self) { i in
                    ActionView()
                    Divider()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
