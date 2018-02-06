//
//  LXFViewModelType.swift
//  RxSwiftDemo
//
//  Created by zetafin on 2018/1/30.
//  Copyright © 2018年 LXF. All rights reserved.
//

import Foundation

// 创建modelType协议
protocol LXFViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(input: Input) -> Output
}
