//
//  TShape.swift
//  Teris
//
//  Created by User21 on 2018/12/13.
//  Copyright © 2018 User21. All rights reserved.
//

class TShape:Shape {
    /*
     Orientation 0
     
       • | 0 |
     | 1 | 2 | 3 |
     
     Orientation 90
     
   • | 1 |
     | 2 | 0 |
     | 3 |
     
     Orientation 180
     
     •
     | 1 | 2 | 3 |
         | 0 |
     
     Orientation 270
     
       • | 1 |
     | 0 | 2 |
         | 3 |
     
     • marks the row/column indicator for the shape
     
     */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero:       [(1, 0), (0, 1), (1, 1), (2, 1)],
            Orientation.Ninety:     [(2, 1), (1, 0), (1, 1), (1, 2)],
            Orientation.OneEighty:  [(1, 2), (0, 1), (1, 1), (2, 1)],
            Orientation.TwoSeventy: [(0, 1), (1, 0), (1, 1), (1, 2)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}
