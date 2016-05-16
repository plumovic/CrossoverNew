//
//  MLHand.swift
//  Crossover
//
//  Created by plumovic on 5/4/16.
//  Copyright © 2016 plumovic. All rights reserved.

import Foundation
import SpriteKit

class MLHand: SKSpriteNode
{
    var hand: SKSpriteNode!
    let HAND_WIDTH: CGFloat = 80.0
    let HAND_HEIGHT: CGFloat = 50.0
    let WALL_COLOR = UIColor.clearColor()
    
    init()
    {
        let size = CGSizeMake(HAND_WIDTH, HAND_HEIGHT)
        super.init(texture: nil, color: WALL_COLOR, size: size)
        hand = SKSpriteNode(imageNamed: "HAND2PETAR")
        addChild(hand)
        startMoving()
        loadPhysicsBodyWithSize(size)
    }

    func loadPhysicsBodyWithSize(size: CGSize)
    {
        physicsBody = SKPhysicsBody(rectangleOfSize: size)
        physicsBody?.categoryBitMask = handCategory
        physicsBody?.affectedByGravity = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startMoving()
    {
        let moveDown = SKAction.moveByX(0, y: -300, duration: 0.5)
        runAction(SKAction.repeatActionForever(moveDown))
    }
    
}