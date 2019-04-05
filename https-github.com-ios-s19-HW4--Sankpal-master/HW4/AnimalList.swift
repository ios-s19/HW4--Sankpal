//
//  AnimalList.swift
//  HW4
//
//  Created by Neilan Sankpal on 4/4/19.
//  Copyright © 2019 Neilan Sankpal. All rights reserved.
//

import UIKit
class AnimalList {
    var allItems = [Item]()

    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }

    init() {
        for _ in 0..<5 {
            createItem()
        }
    }


}
