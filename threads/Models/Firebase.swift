//
//  Firebase.swift
//  threads
//
//  Created by David Daly on 7/15/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class FirebaseModel: ObservableObject {
    init() {}
    
    @Published var user: User? = nil
    
    func fetchUser() {
        
    }
}
