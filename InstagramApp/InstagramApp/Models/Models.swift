//
//  Models.swift
//  InstagramApp
//
//  Created by Hana Jusufovic on 22/10/2020.
//  Copyright © 2020 Hana Jusufovic. All rights reserved.
//

import Foundation

enum Gender {
    case male, female, other
}

struct User {
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let birthDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
    let profilePhoto: URL
}

struct UserCount {
    let followers: Int
    let following: Int
    let posts: Int
}
public enum UserPostType: String {
    case photo = "Photo"
    case video = "Video"
}

public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let thumbnailImage: URL
    let postURL: URL
    let caption: String?
    let likeCount: [PostLike]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [String]
    let owner: User
}

struct PostLike {
    let username: String
    let postIdentifier: String
}

struct CommentLike {
    let username: String
    let postIdentifier: String
}


struct PostComment {
    let identifier: String
    let username: String
    let text: String
    let createdDate: Date
    let likes: [CommentLike]
    
}

