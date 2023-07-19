//
//  ProfileHeaderView.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import SwiftUI

struct ProfileHeaderView: View {
//    @StateObject var firebase = FirebaseModel()
//    var user = firebase.fetchUser()
    
    var body: some View {
        VStack(alignment: .leading) {
        HStack {
            VStack(alignment: .leading) {
                Text("David Daly")
                    .font(.title)
                    .bold()
                Text("thedaviddaly")
            }
            Spacer()
            Image(systemName: "person.circle.fill")
                .padding(.top, 2)
                .font(.largeTitle)
        }
        Text("jsut a city boy, born and raised in south detroit")
                .padding(.top, 1)
                .font(.subheadline)
            HStack {
                Image(systemName: "person.3")
                Text("\(1222) Followers")
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
