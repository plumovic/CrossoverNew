//
//  MLHero.swift
//  Crossover
//
//  Created by plumovic on 4/20/16.
//  Copyright © 2016 plumovic. All rights reserved.
//

import Foundation
import SpriteKit

class MLHero: SKSpriteNode
{
    var ball: SKSpriteNode!
    var ballLeft = false
    
    init()
    {
        super.init(texture: nil, color: UIColor.clearColor(), size: CGSizeMake(50, 50))
        
        ball = SKSpriteNode(imageNamed: "basketball")
        ball.xScale = 0.5
        ball.yScale = 0.5
        addChild(ball)
        
        loadPhysicsBodyWithSize(size)
    }

    func loadPhysicsBodyWithSize(size: CGSize)
    {
        physicsBody = SKPhysicsBody(rectangleOfSize: size)
        physicsBody?.categoryBitMask = ballCategory
        physicsBody?.contactTestBitMask = handCategory
        physicsBody?.affectedByGravity = false
        
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    func crossover()
    {
        ballLeft = !ballLeft
        
        var scale: CGFloat!
        
        if ballLeft
        {
            scale = -1.0
        }
        else
        {
            scale = 1.0
        }
        
        let translate = SKAction.moveByX(scale * (size.width + MLGroundWidth + 80), y: 0, duration: 0.2)
        let flip = SKAction.scaleXTo(scale, duration: 0.05)
        
        runAction(translate)
        runAction(flip)
    }
    
    func moveBall()
    {
        let ballRotate = SKAction.rotateByAngle(5.0, duration: 1.3)
        ball.runAction(SKAction.repeatActionForever(ballRotate))
    }
    
    func stop()
    {
        ball.removeAllActions()
    }
    
    
}