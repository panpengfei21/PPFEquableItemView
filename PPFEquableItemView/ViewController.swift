//
//  ViewController.swift
//  PPFEquableItemView
//
//  Created by 潘鹏飞 on 2019/6/17.
//  Copyright © 2019 潘鹏飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var first:PPFEquableItemsView!
    var second:PPFEquableItemsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeUIs()
    }
    
    private func initializeUIs() {
        first = {
            let v = PPFEquableItemsView(frame: CGRect(x: 10, y: 50, width: 200, height: 100), direction: .horizontal, dataSource: self, itemsSpace: 2)
            v.backgroundColor = UIColor.red
            self.view.addSubview(v)
            return v
        }()
        first.reloadDataSources()
        first.reloadDataSources()
        first.reloadDataSources()
        
        second = {
            let v = PPFEquableItemsView(frame: CGRect(x: 10, y: 160, width: 200, height: 100), direction: .vertical, dataSource: self, itemsSpace: 2)
            v.backgroundColor = UIColor.red
            self.view.addSubview(v)
            return v
        }()
        second.reloadDataSources()
    }
}

extension ViewController:PPFEquableItemsViewDataSource {
    func equableItemsNumberIn(eView: PPFEquableItemsView) -> Int {
        if eView == first {
            return 5
        }else{
            return 3
        }
    }
    
    func equableItems(eView: PPFEquableItemsView, viewAtIndex index: Int) -> UIView {
        let v = UIView(frame: CGRect.zero)
        let g = arc4random_uniform(100)
        v.backgroundColor = UIColor(white: CGFloat(g) / 100.0, alpha: 1)
        return v
    }
}

