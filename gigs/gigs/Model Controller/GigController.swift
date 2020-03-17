//
//  GigController.swift
//  gigs
//
//  Created by patelpra on 3/17/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

import Foundation
import UIKit

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

class GigController {
    
    private let baseURL = URL(string: "https://lambdagigapi.herokuapp.com/api")!
    
    func signUp(with user: User, completion: @escaping (Error?) -> Void) {
        let signUpUrl = baseURL.appendingPathComponent("/users/signup")
        
        var request = URLRequest(url: signUpUrl)
        request.httpMethod = HTTPMethod.post.rawValue
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
