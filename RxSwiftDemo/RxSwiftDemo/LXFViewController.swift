//
//  LXFViewController.swift
//  RxSwiftDemo
//
//  Created by zetafin on 2018/1/30.
//  Copyright © 2018年 LXF. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import NSObject_Rx
import RxDataSources
import Then
import SnapKit
import Moya
import Kingfisher
import MJRefresh


class LXFViewController: UIViewController {
    
    let viewModel = LXFViewModel()
    let tableView = UITableView().then {
        $0.backgroundColor = UIColor.red
        $0.register(cellType: LXFViewCell.self)
        $0.rowHeight = LXFViewCell.cellHeigh()
    }
    
    let dataSource = RxTableViewSectionedReloadDataSource<LXFSection>()
    var vmOutPut : LXFViewModel.LXFOutput?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LXFViewController {
    
    fileprivate func setupUI() {
        
        
        
        
        
    }
    
    
    
}







