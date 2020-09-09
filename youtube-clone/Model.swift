//
//  Model.swift
//  youtube-clone
//
//  Created by waheedCodes on 08/09/2020.
//  Copyright © 2020 waheedCodes. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            
            return
            
        }
        
        // Get a URLSession object - Does all of the work of network call
        let session = URLSession.shared
        
        // Get a data task from URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Is there an error? Or data response empty?
            if error != nil || data == nil {
                return
            }
            
            // Pass data into the video object
            
            
        }
        
        // Kick off the task
        dataTask.resume()
    }
    
    
}

