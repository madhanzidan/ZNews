//
//  PostData.swift
//  ZNews
//
//  Created by Zidan Ramadhan on 11/03/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable { //Identifiable protocol to know the order of objects based on ID
    
    let title: String
    let url: String? //So, it won't be error if there's no value in the url
    let points: Int
    let objectID: String
    var id: String {
        return objectID
    }
}

