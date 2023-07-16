//
//  Post.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import Foundation

// MARK: ‼️ Challenge: 1 ‼️ 
class Post: ObservableObject {
    var id: UUID
    var handle: String
    var post: String
    var replies: Int // [Post.id]
    var likes: Int // [User.id]
    
    init(id: UUID = UUID(), handle: String, post: String, replies: Int, likes: Int) {
        self.id = id
        self.handle = handle
        self.post = post
        self.replies = replies
        self.likes = likes
    }
}
