//
//  ViewController.swift
//  Button Fun
//
//  Created by Noemi Quezada on 2/12/17.
//  Copyright © 2017 Noemi Quezada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let blockSource: BlockSource = BlockSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {

    }
    
    override func viewWillLayoutSubviews() {
        
        // Remove a grid if it exists
        removeGrid();
        
        // Compute grid constraints
        let width = view.frame.size.width
        let height = view.frame.size.height
        let columns = Int(width / Constants.BLOCK_WIDTH)
        let rows = Int(height / Constants.BLOCK_HEIGHT)
        let count = columns * rows
        blockSource.initializeBlocks(count: count)
        createGrid(rows: rows, columns: columns)
        
    }
    
    func removeGrid() {
        for view in view.subviews {
            view.removeFromSuperview()
        }
    }
    
    func createGrid(rows: Int, columns: Int){
        // Create Grid
        var columnStackViews = [UIStackView]()
        
        for row in 0...rows-1 {
            var blocks = [Block]()
            for column in 0...columns-1 {
                // Retrive a Block from Block Source
                let block: Block = blockSource.blocks[row*columns+column]
                blocks.append(block);
            }
            
            // Create Columns
            let stackView = UIStackView(arrangedSubviews: blocks)
            stackView.axis = .horizontal
            stackView.distribution = .equalCentering
            stackView.alignment = .center
            stackView.spacing = 0
            
            columnStackViews.append(stackView)
        }
        
        // Create Row
        let stackView = UIStackView(arrangedSubviews: columnStackViews)
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        // Centered the Stack View and add height and width constraints
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

