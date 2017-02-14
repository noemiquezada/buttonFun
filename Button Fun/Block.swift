//
//  Block.swift
//  Button Fun
//
//  Created by Noemi Quezada on 2/12/17.
//  Copyright © 2017 Noemi Quezada. All rights reserved.
//

import UIKit

class Block: UIView {
    
    let tapRecognizer = UITapGestureRecognizer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Block is Tap Enabled
        self.isUserInteractionEnabled = true
        tapRecognizer.addTarget(self, action: #selector(Block.changeColor))
        self.addGestureRecognizer(tapRecognizer)
        
        // Set the color and the Size constraints
        self.backgroundColor = UIColor.random()
        self.heightAnchor.constraint(equalToConstant: Constants.BLOCK_HEIGHT).isActive = true
        self.widthAnchor.constraint(equalToConstant: Constants.BLOCK_WIDTH).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeColor() {
        backgroundColor = UIColor.random()
        setNeedsDisplay()
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
