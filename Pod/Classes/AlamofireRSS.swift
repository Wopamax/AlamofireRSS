//
//  AlamofireRSS.swift
//  AlamofireRSS
//
//  Created by Donald Angelillo on 3/1/16.
//  Copyright © 2016 Donald Angelillo. All rights reserved.
//

import Foundation
import Alamofire


extension Request {
    public static func RSSResponseSerializer() -> ResponseSerializer<RSSFeed, NSError> {
        return ResponseSerializer { request, response, data, error in
            guard error == nil else {
                return .Failure(error!)
            }
            
            guard let validData = data else {
                let failureReason = "Data could not be serialized. Input data was nil."
                let error = Error.errorWithCode(.DataSerializationFailed, failureReason: failureReason)
                return .Failure(error)
            }
            
            let parser = AlamofireRSSParser(data: validData)
            
            let parsedResults: (feed: RSSFeed?, error: NSError?) = parser.parse()
            
            if let feed = parsedResults.feed {
                return .Success(feed)
            } else {
                return .Failure(parsedResults.error!)
            }
        }
    }
    
//    public func responseRSS(parser parser: AlamofireRSSParser?, completionHandler: Response<RSSFeed, NSError> -> Void) -> Self {
//        return response(responseSerializer: Request.RSSResponseSerializer(parser), completionHandler: completionHandler)
//    }
    
    public func responseRSS(completionHandler: Response<RSSFeed, NSError> -> Void) -> Self {
        return response(responseSerializer: Request.RSSResponseSerializer(), completionHandler: completionHandler)
    }
}

