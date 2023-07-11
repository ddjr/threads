//
//  PostView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct PostView: View {
    @State var handle: String
    @State var post: String
    @State var replies: Int
    @State var likes: Int

    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.circle.fill")
                .padding(.top, 2)
                .font(.title)
            VStack(alignment: .leading) {
                HStack {
                    Text(handle)
                        .underline()
                        
                    Spacer()
                    Text("4m")
                        .fontWeight(.ultraLight)
                    Image(systemName: "ellipsis")
                }
                Text(post)
                    .lineSpacing(5)
                    .padding(.top, 1)
                HStack {
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "arrow.2.squarepath")
                    Image(systemName: "paperplane")
                }
                .padding(.top, 1)
                HStack {
                    Text("\(replies) replies")
                        .fontWeight(.ultraLight)
                        .underline()
                    Text("•")
                        .fontWeight(.ultraLight)
                    Text("\(likes) likes")
                        .fontWeight(.ultraLight)
                        .underline()
                }
                .padding(.top, 2)
            }
        }
        .padding()
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(
            handle: PreviewPost.handle,
            post: PreviewPost.post,
            replies: PreviewPost.replies,
            likes: PreviewPost.likes
        )
    }
}
