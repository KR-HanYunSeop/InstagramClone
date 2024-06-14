//
//  PostViewModel.swift
//  InstagramClone
//
//  Created by 한윤섭 on 6/12/24.
//

import Foundation

struct PostViewModel {
    let post: Post
    
    var imageUrl: URL? { return URL(string: post.imageUrl) }
    
    var userProfileImageUrl: URL? { return URL(string: post.ownerImageUrl) }
    
    var username: String { return post.ownerUsername }
    
    var caption: String { return post.caption }
    
    var likes: Int { return post.likes }
    
    var likesLabelText: String { return post.likes != 1 ? "\(post.likes) likes" : "\(post.likes) like" }
    
    init(post: Post) {
        self.post = post
    }
}
