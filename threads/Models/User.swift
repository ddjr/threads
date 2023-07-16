//
//  User.swift
//  threads
//
//  Created by David Daly on 7/15/23.
//

import Foundation
// zDRkQOEsz2iRXIwM8tmM
struct User {
    var id: UUID            // 1234asdf
    var handle: String      // thedaviddaly
    var about: String       // Just a city boy, born and raised in south detroit
    var dateCreated: Date   // June 10th, 1981
    var followers: Int
    var threads: [UUID]     // [post.id]
    var replies: [UUID]     // [post.id]
}

struct PostFB {
    var id: UUID            // 1234asdf
    var userId: UUID        // 1234asdf
    var dateCreated: Date   // June 10th, 1981
    var body: String        // This is the best post ever
    var parentPost: UUID?   //
    var replies: [UUID]     // [Post.id]
    var likes: [UUID]       // [User.id]
    
    func timeSinceCreated() -> String {
        let secondsSinceCreated = Date().timeIntervalSince1970 - self.dateCreated.timeIntervalSince1970
        let day = 84600.0   // seconds in a day
        let hour = 3600.0   // seconds in a hour
        let minute = 60.0   // seconds in a minute
            
            // MARK: ‼️Challenge‼️
            // round to the nearest week

        if secondsSinceCreated > day {
            // Round to the nearest day
            let daysSinceCreated = (secondsSinceCreated / day).rounded()
            return "\(daysSinceCreated) d"
            
        } else if secondsSinceCreated > hour {
            // Round to the nearest hour
            let hoursSinceCreated = (secondsSinceCreated / hour).rounded()
            return "\(hoursSinceCreated) h"
            
        } else if secondsSinceCreated > minute {
            // Round to the nearest minute
            let minutesSinceCreated = (secondsSinceCreated / minute).rounded()
            return "\(minutesSinceCreated) m"
        }
        return "\(secondsSinceCreated) s"
    }
}
