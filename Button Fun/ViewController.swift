//
//  ViewController.swift
//  Button Fun
//
//  Created by Noemi Quezada on 2/12/17.
//  Copyright © 2017 Noemi Quezada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let height = view.frame.size.height
        let columns = Int(width / Constants.BLOCK_WIDTH)
        let rows = Int(height / Constants.BLOCK_HEIGHT)
        createGrid(rows: rows, columns: columns)
    }
    
    override func viewDidLayoutSubviews() {

    }
    
    override func viewWillLayoutSubviews() {
        // Compute grid constraints

        
    }
    
    func createGrid(rows: Int, columns: Int){
        // Create Grid
        var columnStackViews = [UIStackView]()
        
        for _ in 0...rows-1 {
            var blocks = [Block]()
            for _ in 0...columns-1 {
                // Create a Block
                let block = Block()
                blocks.append(block);
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
        
        // Centered the Stack View and add height and width constraints
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

