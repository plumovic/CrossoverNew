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
    
    init()
    {
        super.init(texture: nil, color: UIColor.clearColor(), size: CGSizeMake(50, 50))
        
        ball = SKSpriteNode(imageNamed: "basketball")
        ball.xScale = 0.5
        ball.yScale = 0.5
        addChild(ball)
    }

    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    func moveBall()
    {
        let ballRotate = SKAction.rotateByAngle(5.0, duration: 2)
        ball.runAction(SKAction.repeatActionForever(ballRotate))
    }
    
    func stop()
    {
        ball.removeAllActions()
    }
    
    
}