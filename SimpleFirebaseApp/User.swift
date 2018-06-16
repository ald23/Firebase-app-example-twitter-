//
//  User.swift
//  SimpleFirebaseApp
//
//  Created by Aidana Ketebay on 11.04.18.
//  Copyright © 2018 SDU. All rights reserved.
//

import Foundation
import FirebaseDatabase
struct User{
    private var name: String?
    private var surname: String?
    private var dateOfRegist: String?
    private var email: String?
    
    init(_ name: String, _ surname: String, _ dateOfRegist: String, _ email: String) {
        self.name = name
        self.surname = surname
        self.dateOfRegist = dateOfRegist
        self.email = email
    }
    init(snapshot: DataSnapshot) {
        let tweet = snapshot.value as! NSDictionary
        name = tweet.value(forKey: "Name") as? String
        surname = tweet.value(forKey: "Surname") as? String
        dateOfRegist = tweet.value(forKey: "DateRegistration") as? String
        email = tweet.value(forKey: "Gmail") as? String
    }
    var Name: String?{
        get{
            return name
        }
    }
    var Surname: String?{
        get{
            return surname
        }
    }
    var DateOfRegist: String?{
        get {
            return dateOfRegist
        }
    }
    var Email: String?{
        get{
            return email
        }
    }
    func toJSONFormat()-> Any{
        return ["Name": name!,
                "Surname": surname!,
                "DateRegistration": dateOfRegist!,
                "Gmail": email!
                ]
    }
    
}
