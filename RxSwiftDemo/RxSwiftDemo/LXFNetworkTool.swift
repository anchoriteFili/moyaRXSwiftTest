//
//  LXFNetworkTool.swift
//  RxSwiftDemo
//
//  Created by zetafin on 2018/1/30.
//  Copyright © 2018年 LXF. All rights reserved.
//

import Foundation
import Moya

enum LXFNetworkTool {
    
    enum LXFNetworkCategory: String {
        case all     = "all"
        case android = "Android"
        case ios     = "iOS"
        case welfare = "福利"
    }
    
    case data(type:LXFNetworkCategory, size:Int, index:Int)
}

extension LXFNetworkTool: TargetType {
    
    var baseURL: URL {
        return URL(string: "http://gank.io/api/data/")!
    }
    
    var path: String {
        switch self {
        case .data(type: let type, size: let size, index: let index):
            return "\(type.rawValue)/\(size)/\(index)"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var parameters: [String : Any]? {
        return nil
    }
    
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    var sampleData: Data {
        return "LinXunFeng".data(using: .utf8)!
    }
    
    var task: Task {
        return .request
    }
    
}

//MARK: 定义一个全局变量用于整个项目的网络请求
let lxfNetTool = RxMoyaProvider<LXFNetworkTool>()
