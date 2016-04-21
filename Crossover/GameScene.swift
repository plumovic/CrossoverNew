//
//  GameScene.swift
//  Crossover
//
//  Created by plumovic on 3/31/16.
//  Copyright (c) 2016 plumovic. All rights reserved.
//

import SpriteKit

class GameScene: SKScene
{
    var movingGround = MLMovingGround!()
    var ball = MLHero!()
    
    override func didMoveToView(view: SKView)
    {
        backgroundColor = UIColor.darkGrayColor()
        
        movingGround = MLMovingGround(size: CGSizeMake(50, frame.size.height))
        movingGround.position = CGPointMake(view.frame.size.width / 2 , 0)
        addChild(movingGround)
        
        ball = MLHero()
        ball.position = CGPointMake(movingGround.position.x + movingGround.frame.size.width / 2 + ball.frame.size.width / 2, 70)
        addChild(ball)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        movingGround.start()
    }
   
    override func update(currentTime: CFTimeInterval)
    {
        /* Called before each frame is rendered */
    }
}
