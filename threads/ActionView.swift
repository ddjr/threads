//
//  ActionView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct ActionView: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.circle.fill")
                .padding(.top, 2)
                .font(.title)
            VStack(alignment: .leading) {
                Text("tombrady")
                Text("You are the man")
                    .foregroundColor(.secondary)
                Text("1.4 Million Followers")
            }
            Spacer()
            HStack(alignment: .center) {
                Text("Follow")
                    .padding(.horizontal)
                    .padding(.vertical, 6)
            }
            .border(Color.secondary)
        }
        .padding(.horizontal)
    }
}

struct ActionView_Previews: PreviewProvider {
    static var previews: some View {
        ActionView()
    }
}
