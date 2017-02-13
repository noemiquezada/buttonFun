//
//  ViewController.swift
//  Button Fun
//
//  Created by Noemi Quezada on 2/12/17.
//  Copyright © 2017 Noemi Quezada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let data:ColorSource = ColorSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillLayoutSubviews() {

        // Compute grid constraints
        let width = view.frame.size.width
        let height = view.frame.size.height
        let columns = Int(width / Constants.BLOCK_WIDTH)
        let rows = Int(height / Constants.BLOCK_HEIGHT)
        
        // Create Grid
        var columnStackViews = [UIStackView]()
        
        for _ in 0...rows-1 {
            var blocks = [Block]()
            for _ in 0...columns-1 {
                // Create a view
                let view = Block()
            
                blocks.append(view);
            }
            
            // Create Columns
            let stackView = UIStackView(arrangedSubviews: blocks)
            stackView.axis = .horizontal
            stackView.distribution = .fillEqually
            stackView.alignment = .center
            stackView.spacing = 0
            
            columnStackViews.append(stackView)
        }
        
        // Create Row
        let stackView = UIStackView(arrangedSubviews: columnStackViews)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        // Add Constraints to the Stack View
        let viewsDictionary = ["stackView":stackView]
        let stackView_H = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[stackView]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        let stackView_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[stackView]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: viewsDictionary)
        view.addConstraints(stackView_H)
        view.addConstraints(stackView_V)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

