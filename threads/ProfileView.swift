//
//  ProfileView.swift
//  threads
//
//  Created by David Daly don 7/10/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var activeTab: String = "threads"
    @State var isMyProfile: Bool
    var body: some View {
        VStack {
            ProfileHeaderView()
            ProfileActionsView(isMyProfile: isMyProfile)
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

@ViewBuilder
func ProfileActionsView(isMyProfile: Bool) -> some View {
    if isMyProfile {
        HStack {
            Text("Edit Profile")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 2)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary, lineWidth: 1)
                )
            Text("Share Profile")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 2)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary, lineWidth: 1)
                )
        }
        .padding()
    } else {
        Text("Follow")
            .frame(maxWidth: .infinity)
            .padding(.vertical, 6)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(.secondary, lineWidth: 1)
            )
            .padding(.horizontal)
            .onTapGesture {
                print("following")
            }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(isMyProfile: false)
    }
}
