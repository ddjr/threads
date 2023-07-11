//
//  ProfileView.swift
//  threads
//
//  Created by David Daly don 7/10/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            ProfileHeaderView()
            HStack {
                Text("Threads")
                    .frame(maxWidth: .infinity)
                    .underline()
                Text("Replies")
                    .frame(maxWidth: .infinity)
            }
            NewsFeedView(posts: PreviewPosts)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
