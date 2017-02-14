//
//  BlockSource.swift
//  Button Fun
//
//  Created by Noemi Quezada on 2/13/17.
//  Copyright © 2017 Noemi Quezada. All rights reserved.
//

import Foundation
import UIKit


class  BlockSource: NSObject {
    var blocks = [Block]()
    
    func addBlock() {
        let newBlock = Block()
        blocks.append(newBlock)
    }
    
    func initializeBlocks(count: Int) {
        if blocks.count == 0 {
            for _ in 0...count-1 {
                addBlock()
            }
        }
        

    }
}
