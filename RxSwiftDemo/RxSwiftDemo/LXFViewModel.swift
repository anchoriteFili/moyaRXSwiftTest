//
//  LXFViewModel.swift
//  RxSwiftDemo
//
//  Created by zetafin on 2018/1/30.
//  Copyright © 2018年 LXF. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

enum LXFRefreshStatus {
    case none
    case beingHeaderRefresh
    case endHeaderRefresh
    case beingFooterRefresh
    case endFooterRefresh
    case noMoreData
}

class LXFViewModel: NSObject {
    
    // 存放着解析完成的数据模型
    let models = Variable<[LXFModel]>([])
    
    // 记录当前的索引值
    var index: Int = 1
}

//MARK: 添加遵循LXFViewModelType协议的模型
extension LXFViewModel: LXFViewModelType {
    
    typealias Input = LXFInput
    typealias Output = LXFOutput
    
    // 输入类型
    struct LXFInput {
        // 网络请求类型
        let category: LXFNetworkTool.LXFNetworkCategory
        
        init(category: LXFNetworkTool.LXFNetworkCategory) {
            self.category = category
        }
    }
    
    // 输出类型
    struct LXFOutput {
        
        // tableView的sectioins数据
        let sections: Driver<[LXFSection]>
        
        // 外界通过该属性告诉viewModel加载数据（传入值是为了标志是否重新加载）
        let requestCommond = PublishSubject<Bool>()
        // 告诉外界的tableview当前的刷新状态
        let refreshStates = Variable<LXFRefreshStatus>(.none)
        
        init(sections: Driver<[LXFSection]>) {
            self.sections = sections
        }
    }
    
    
    func transform(input: LXFViewModel.LXFInput) -> LXFViewModel.LXFOutput {
        
        let sections = models.asObservable().map { (models) -> [LXFSection] in
            
            // 当models的值改变的时候调用
            return [LXFSection(items: models)]
        }.asDriver(onErrorJustReturn: [])
        
        
        let output = LXFOutput(sections: sections)
        
        
        output.requestCommond.subscribe(onNext: { [unowned self] (isReloadData) in
            
            self.index = isReloadData ? 1 : self.index+1
            
            lxfNetTool.request(.)
            
            
            
            
            
        }, onError: <#T##((Error) -> Void)?##((Error) -> Void)?##(Error) -> Void#>, onCompleted: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>, onDisposed: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        
        
        
        
        
        
        return output
    }
}



