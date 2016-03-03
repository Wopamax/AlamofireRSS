//
//  RSSItem.swift
//  Heavy Headlines
//
//  Created by Donald Angelillo on 3/1/16.
//  Copyright © 2016 Donald Angelillo. All rights reserved.
//

import Foundation

public class RSSItem: CustomStringConvertible {
    var title: String? = nil
    var link: String? = nil
    var itemDescription: String? = nil
    var guid: String? = nil
    var author: String? = nil
    var comments: String? = nil
    var source: String? = nil
    var pubDate: NSDate? = nil

    public var description: String {
        return "title: \(self.title)\nlink: \(self.link)\nitemDescription: \(self.itemDescription)\nguid: \(self.guid)\nauthor: \(self.author)\ncomments: \(self.comments)\nsource: \(self.source)\npubDate: \(self.pubDate)"
    }
}