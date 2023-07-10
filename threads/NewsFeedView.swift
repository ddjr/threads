//
//  NewsFeedView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct NewsFeedView: View {
    var body: some View {
        ScrollView {
            ForEach((1...10), id: \.self) { i in     PostView(
                    handle: "edmylett",
                    post: "I want you to know I proud of you... even if you are doing all you can and you still feel like that's not enough...",
                    replies: 11,
                    likes: 57
                )
                Divider()
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView()
    }
}
