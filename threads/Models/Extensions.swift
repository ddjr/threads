//
//  Extensions.swift
//  threads
//
//  Created by David Daly on 7/10/23.
//

import Foundation
import SwiftUI

extension Image {
    func tabStyle() -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fill)
            .frame(maxWidth: 24.0, maxHeight: 24.0)
            .fontWeight(.light)
    }
}
