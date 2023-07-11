//
//  NewsFeedView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct NewsFeedView: View {
    let posts: [Post]
    var body: some View {
        ScrollView {
            ForEach(posts, id: \.id) { post in
                PostView(
                    handle: post.handle,
                    post: post.post,
                    replies: post.replies,
                    likes: post.likes
                )
                Divider()
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView(posts: PreviewPosts)
    }
}
