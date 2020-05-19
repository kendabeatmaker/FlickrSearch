//
//  FlickrRequestConfig.swift
//  FlickrSearch
//
//  Created by Satyadev on 30/09/18.
//  Copyright © 2018 Satyadev Chauhan. All rights reserved.
//

import UIKit

enum FlickrRequestConfig {
    
    case searchRequest(String, Int)
    
    var value: Request? {
        
        switch self {
            
        case .searchRequest(let searchText, let pageNo):
            let maadAlbum = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=d22e5c3e492984638d76072b6d5b1c2c&user_id=188522128%40N06&format=json&nojsoncallback=1"
            //let urlString = String(format: FlickrConstants.searchURL, searchText, pageNo)
            let urlString = maadAlbum
            let reqConfig = Request.init(requestMethod: .get, urlString: urlString)
            return reqConfig
        }
    }
}
