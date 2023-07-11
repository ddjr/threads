//
//  ActivityView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
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

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
