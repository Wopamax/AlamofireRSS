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
    var guid: String? = nil
    var link: String? = nil
    var itemDescription: String? = nil
    
    public var description: String {
        return "title: \(self.title)\nfeedDescription: \(self.itemDescription)\nguid: \(self.guid)"
    }
}