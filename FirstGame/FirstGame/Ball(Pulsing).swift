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
    
    init(size:CGSize, color:SKColor){
        self.size = size
        let center = CGPointMake(size.width * 0.5, size.height * 0.5)
        let circle = CGRectMake(0 - size.width/2.0, 0 - size.height/2.0 , size.width, size.height)
        self.node = SKShapeNode()
        self.node.path = UIBezierPath(ovalInRect: circle).CGPath
        self.node.fillColor = color
        self.node.strokeColor = UIColor.clearColor()
        //self.node.strokeColor = nil
    }
}