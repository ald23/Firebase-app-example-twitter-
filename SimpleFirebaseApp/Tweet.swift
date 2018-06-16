//
//  Tweet.swift
//  SimpleFirebaseApp
//
//  Created by Darkhan on 03.04.18.
//  Copyright © 2018 SDU. All rights reserved.
//

import Foundation
import FirebaseDatabase
struct Tweet{
    private var content: String?
    private var user_email: String?
    
    init(_ content: String, _ user_email: String) {
        self.content = content
        self.user_email = user_email
    }
    init(snapshot: DataSnapshot) {
        let tweet = snapshot.value as! NSDictionary
        content = tweet.value(forKey: "content") as? String
        user_email = tweet.value(forKey: "user_email") as? String
    }
    var Content: String?{
        get{
            return content
        }
    }
    var User_email: String?{
        get{
            return user_email
        }
    }
    func toJSONFormat()-> Any{
        return ["content": content,
                "user_email": user_email]
    }
    
}
