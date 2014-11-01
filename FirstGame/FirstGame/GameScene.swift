//
//  GameScene.swift
//  FirstGame
//
//  Created by Luca Pascucci on 01/11/14.
//  Copyright (c) 2014 Luca Pascucci. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var ball:Ball_Bobbing!
    var xangle = 0.0
    var yangle = 0.0
    var centerY = 0.0
    var range = 150.0
    var xspeed = 0.1
    var yspped = 0.2
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        ball = Ball_Bobbing(size: self.size)
        self.addChild(ball.node)
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        ball.node.position.y = CGFloat(centerY + sin(yangle) * range)
        ball.node.position.x = CGFloat(centerY + sin(xangle) * range)
        xangle += xspeed
        yangle += yspped
    }
}
