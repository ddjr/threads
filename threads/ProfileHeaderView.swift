//
//  ProfileHeaderView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
        HStack {
            VStack(alignment: .leading) {
                Text("David Daly")
                    .font(.title)
                    .bold()
                Text("david.daly.jr")
            }
            Spacer()
            Image(systemName: "person.circle.fill")
                .padding(.top, 2)
                .font(.largeTitle)
        }
        Text("Just a city boy born and raised in south Detroit...")
                .padding(.top, 1)
                .font(.subheadline)
            HStack {
                Image(systemName: "person.3")
                Text("112 Followers")
                    .foregroundColor(.secondary)
            }
            .padding(.top, 1)
        }
        .padding()
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
