//
//  PostView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct PostView: View {
    @State var post: Post
    @State var showReplyThreadView = false
    @State private var liked: Bool = false
    @State private var reposted: Bool = false
    var body: some View {
        NavigationStack {
            HStack(alignment: .top) {
                ThreadLineView()
                VStack(alignment: .leading) {
                    HStack {
                        Text(post.handle)
                            .underline()
                        
                        Spacer()
                        Text("4m")
                            .fontWeight(.ultraLight)
                        Image(systemName: "ellipsis")
                    }
                    Text(post.post)
                        .lineSpacing(5)
                        .padding(.top, 1)
                    HStack {
                        Image(systemName: liked ? "heart.fill" : "heart")
                            .foregroundColor(liked ? .red : .black)
                            .onTapGesture {
                                liked.toggle()
                                // TODO: Add like func
                            }
                        Image(systemName: "message")
                            .onTapGesture {
                                showReplyThreadView = true
                            }
                        Image(systemName: "arrow.2.squarepath")
                            .foregroundColor(reposted ? .green : .black)
                            .onTapGesture {
                                reposted = true
                                // TODO: Add repost func
                            }
                        Image(systemName: "paperplane")
                    }
                    .padding(.top, 1)
                    HStack {
                        Text("\(post.replies) replies")
                            .fontWeight(.ultraLight)
                            .underline()
                        Text("•")
                            .fontWeight(.ultraLight)
                        Text("\(post.likes) likes")
                            .fontWeight(.ultraLight)
                            .underline()
                    }
                    .padding(.top, 2)
                }
            }
            .padding(.horizontal)
        }
        .sheet(isPresented: $showReplyThreadView) {
            ReplyThreadView(post: $post)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: PreviewPost)
    }
}
