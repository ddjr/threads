//
//  NewThreadView.swift
//  threads
//
//  Created by David Daly on 7/13/23.
//

import SwiftUI

struct NewThreadView: View {
    @State private var threadText: String = ""
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                ThreadLineView()
                VStack(alignment: .leading){
                    Text("TheDavidDaly")
                        .underline()
                    TextField("Start a Thread...", text: $threadText)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Image(systemName: "paperclip")
                        .foregroundColor(.gray)
                        .padding(.top, 6)
                }
                Spacer()
            }
            Spacer()
            HStack {
                Text("Anyone can reply")
                    .underline()
                    .foregroundColor(.gray)
                Spacer()
                Text("Post")
                    .underline()
                    .foregroundColor(.blue)
                    .onTapGesture {
                        print(threadText)
                    }
            }
        }
    }
}

struct NewThreadView_Previews: PreviewProvider {
    static var previews: some View {
        NewThreadView()
    }
}
