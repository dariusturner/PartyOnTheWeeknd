//
//  Weeknd1.swift
//  PartyOnTheWeeknd
//
//  Created by Darius Turner on 1/12/17.
//  Copyright © 2017 MTEnterprise. All rights reserved.
//

import Foundation


class Weeknd1 {
    private var _imageUrl: String!
    private var _videoUrl: String!
    private var _videoTitle: String!
    
    var imageUrl: String {
        return _imageUrl
    }
    
    var videoUrl: String {
        return _videoUrl
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageUrl: String, videoUrl: String, videoTitle: String) {
        
        _imageUrl = imageUrl
        _videoUrl = videoUrl
        _videoTitle = videoTitle
    }
}
