//
//  Ball(Pulsing).swift
//  FirstGame
//
//  Created by Luca Pascucci on 01/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import SpriteKit

class Ball_Pulsing {
    
    var size:CGSize
    var node:SKShapeNode!
    
    init(size:CGSize){
        self.size = size
        let center = CGPointMake(size.width * 0.5, size.height * 0.5)
        let circle = CGRectMake(center.x - 40.0, center.y - 40.0, 80.0, 80.0)
        self.node = SKShapeNode()
        self.node.path = UIBezierPath(ovalInRect: circle).CGPath
        self.node.fillColor = SKColor.redColor()
        self.node.strokeColor = UIColor.clearColor()
        //self.node.strokeColor = nil
    }
}