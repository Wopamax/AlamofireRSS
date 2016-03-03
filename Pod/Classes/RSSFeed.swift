//
//  RSSFeed.swift
//  AlamofireRSS
//
//  Created by Donald Angelillo on 3/1/16.
//  Copyright © 2016 Donald Angelillo. All rights reserved.
//

import Foundation

public class RSSFeed: CustomStringConvertible {
    var title: String? = nil
    var link: String? = nil
    var feedDescription: String? = nil
    var pubDate: NSDate? = nil
    var lastBuildDate: NSDate? = nil
    var language: String? = nil
    var copyright: String? = nil
    var managingEditor: String? = nil
    var webMaster: String? = nil
    var generator: String? = nil
    var docs: String? = nil
    var ttl: NSNumber? = nil
    
    var items: [RSSItem] = Array()
    
    public var description: String {
        return "title: \(self.title)\nfeedDescription: \(self.feedDescription)\nlink: \(self.link)\npubDate: \(self.pubDate)\nlastBuildDate: \(self.lastBuildDate)\nlanguage: \(self.language)\ncopyright: \(self.copyright)\nmanagingEditor: \(self.managingEditor)\nwebMaster: \(self.webMaster)\ngenerator: \(self.generator)\ndocs: \(self.docs)\nttl: \(self.ttl)\n\titems: \(self.items)"
    }
    
}