//
//  ThreadLineView.swift
//  threads
//
//  Created by David Daly on 7/13/23.
//

import SwiftUI

struct ThreadLineView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .font(.title)
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 1, height: 60)
                    .padding(.bottom, 2)
            Image(systemName: "person.circle.fill")
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct ThreadLineView_Previews: PreviewProvider {
    static var previews: some View {
        ThreadLineView()
    }
}
