//
//  Video.swift
//  youtube-clone
//
//  Created by waheedCodes on 08/09/2020.
//  Copyright © 2020 waheedCodes. All rights reserved.
//

import Foundation

struct Video: Decodable {
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    // Specify the properties needed from the api json
    enum CodingKeys: String, CodingKey {
        
        // Containers holding the needed fields
        case snippet
        case thumbnails
        case high
        case resourceId
        
        // The needed fields for our video object
        case videoId
        case title
        case description
        case thumbnail = "url"
        case published = "publishedAt"
        
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        // Parse the available data at this container level: title, description and published date s
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        // Parse thumbnails
        let thumbnailsContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        
        let highContainer = try thumbnailsContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse the video Id
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceId)
        
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
        
    }
    
}
