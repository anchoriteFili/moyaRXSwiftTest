//
//  LXFModel.swift
//  RxSwiftDemo
//
//  Created by zetafin on 2018/1/30.
//  Copyright © 2018年 LXF. All rights reserved.
//

import Foundation
import ObjectMapper
import RxDataSources


struct LXFModel: Mappable {
    
    var _id = ""
    var createdAt = ""
    var desc = ""
    var publishedAt = ""
    var source = ""
    var type = ""
    var url = ""
    var used = ""
    var who = ""
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        _id <- map["_d"]
        createdAt <- map["createdAt"]
        desc <- map["desc"]
        publishedAt <- map["publishedAt"]
        source <- map["source"]
        type <- map["type"]
        url <- map["url"]
        used <- map["used"]
        who <- map["who"]
    }
}

/* ========================= SectionModel ===================== */

struct LXFSection {
    var items: [Item]
}

extension LXFSection: SectionModelType {
    
     typealias Item = LXFModel
    
    init(original: LXFSection, items: [LXFModel]) {
        self = original
        self.items = items
    }
}



