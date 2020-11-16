//
//  Todayitem.swift
//  UI-33
//
//  Created by にゃんにゃん丸 on 2020/11/16.
//

import SwiftUI

struct Todayitem : Identifiable {
    var id = UUID().uuidString
    var title : String
    var category : String
    var overray : String
    var contentimage : String
    var log : String
}


var items = [
    
    Todayitem(title: "Playstation", category: "Game", overray: "Sony", contentimage: "p1" ,log: "p2"),
    Todayitem(title: "NETFLIX", category: "video", overray: "サブスクリプション", contentimage: "n1", log: "n2")
    
    
]
