//
//  GameScene.swift
//  FirstGame
//
//  Created by Luca Pascucci on 01/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var ball_Pulsing:Ball_Pulsing!
    var angle = 0.0
    var centreScale = 1.0
    var pRange = 0.5
    var pSpeed = 0.05
    
    var ball_Bobbing:Ball_Bobbing!
    var xangle = 0.0
    var yangle = 0.0
    var centerY = 0.0
    var range = 150.0
    var xspeed = 0.1
    var yspped = 0.2
    
    override func didMoveToView(view: SKView) {
       
        /* Setup your scene here */
        ball_Bobbing = Ball_Bobbing(size: self.size)
        self.addChild(ball_Bobbing.node)
        
        ball_Pulsing = Ball_Pulsing(size: CGSizeMake(100.0,100.0),color: SKColor.purpleColor())
        self.addChild(ball_Pulsing.node)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        ball_Bobbing.node.position.y = CGFloat(centerY + sin(yangle) * range)
        ball_Bobbing.node.position.x = CGFloat(centerY + sin(xangle) * range)
        xangle += xspeed
        yangle += yspped
        
        ball_Pulsing.node.setScale(CGFloat(centreScale + sin(angle) * pRange))
        angle += pSpeed
        
        
    }
}
