# PPFEquableItemView

## 效果


## 引入

```
  1.cocoapods
    pod 'PPFEquableItemsView', '~> 0.0.1'
  2.直接拷贝
    PPFEquableItemsView.swift
```

## 怎么用
```
import PPFEquableItemsView
```

```
let first = {
     let v = PPFEquableItemsView(frame: CGRect(x: 10, y: 50, width: 200, height: 100), direction: .horizontal, dataSource: self, itemsSpace: 2)
     v.backgroundColor = UIColor.red
     self.view.addSubview(v)
     return v
}()
first.reloadDataSources()
```
