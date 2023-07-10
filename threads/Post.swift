//
//  Post.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import Foundation

struct Post {
    var id: UUID
    var handle: String
    var post: String
    var replies: [UUID] // [Post.id]
    var likes: [UUID] // [User.id]
    
    init(id: UUID = UUID(), handle: String, post: String, replies: [UUID] = [] ,likes: [UUID] = []) {
        self.id = id
        self.handle = handle
        self.post = post
        self.replies = replies
        self.likes = likes
    }
}
