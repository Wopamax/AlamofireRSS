//
//  RSSItem.swift
//  Heavy Headlines
//
//  Created by Donald Angelillo on 3/1/16.
//  Copyright © 2016 Donald Angelillo. All rights reserved.
//

import Foundation

public class RSSItem: CustomStringConvertible {
    public var title: String? = nil
    public var link: String? = nil
    public var itemDescription: String? = nil
    public var guid: String? = nil
    public var author: String? = nil
    public var comments: String? = nil
    public var source: String? = nil
    public var pubDate: NSDate? = nil
    public var encodedContent: String? = nil

    public var description: String {
        return "title: \(self.title)\nlink: \(self.link)\nitemDescription: \(self.itemDescription)\nguid: \(self.guid)\nauthor: \(self.author)\ncomments: \(self.comments)\nsource: \(self.source)\npubDate: \(self.pubDate)"
    }
}