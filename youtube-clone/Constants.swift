//
//  Constants.swift
//  youtube-clone
//
//  Created by waheedCodes on 08/09/2020.
//  Copyright © 2020 waheedCodes. All rights reserved.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyCX-hdRDfXFEEoP4D33v89ienbGEGjgIIU"
    static var PLAYLIST_ID = "PLBCF2DAC6FFB574DE"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails&maxResults=25&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
}
