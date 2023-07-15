//
//  ReplyThreadView.swift
//  threads
//
//  Created by David Daly on 7/13/23.
//

import SwiftUI

struct ReplyThreadView: View {
    @Binding var post: Post
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack {
                    Image(systemName: "person.circle.fill")
                        .font(.title)
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 1, height: 70)
                            .padding(.bottom, 2)
                            .offset(y: 10)
                    }
                    VStack(alignment: .leading) {
                        HStack {
                            Text(post.handle)
                                .underline()
                            
                            Spacer()
                        }
                        Text(post.post)
                            .lineSpacing(5)
                            .padding(.top, 1)
                        
                }
            }
            NewThreadSheet()
        }
        .padding([.horizontal, .top])
    }
}

struct ReplyThreadView_Previews: PreviewProvider {
    static var previews: some View {
        ReplyThreadView(post: .constant(PreviewPost))
    }
}
