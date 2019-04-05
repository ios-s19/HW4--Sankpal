//
//  Animal.swift
//  HW4
//
//  Created by Neilan Sankpal on 4/4/19.
//  Copyright © 2019 Neilan Sankpal. All rights reserved.
//

import UIKit
class Item: NSObject {
    var name: String
    
    init(name: String) {
        self.name = name
        super.init()
    }
 
    convenience init(random: Bool = false) {
        if random {
            let pigs =  ["ManBearPig", "SpiderPig", "PorkyPig", "PigglyWiggly", "Piglet"]
            let idx = arc4random_uniform(UInt32(pigs.count))
            let randomPigs = pigs[Int(idx)]
            let randomName = "\(randomPigs)"
            self.init(name: randomName)
        } else {
            self.init(name: "")
        }
    }
}
