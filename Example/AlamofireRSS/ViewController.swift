//
//  ViewController.swift
//  AlamofireRSS
//
//  Created by Don Angelillo on 03/02/2016.
//  Copyright (c) 2016 Don Angelillo. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireRSS

class ViewController: UIViewController {

    override func viewDidLoad() {
        //let url = "http://www.blabbermouth.net/feed.rss"
        let url = "http://feeds.feedburner.com/Metalsucks?format=xml"
        
        Alamofire.request(.GET, url).responseRSS() { (response) -> Void in
            if let feed: RSSFeed = response.result.value {
                print(feed)
            }
        }
    }



}

