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
    let HAND_WIDTH: CGFloat = 80.0
    let HAND_HEIGHT: CGFloat = 50.0
    let WALL_COLOR = UIColor.blackColor()
    
    init()
    {
        super.init(texture: nil, color: WALL_COLOR, size: CGSizeMake(HAND_WIDTH, HAND_HEIGHT))
        
        startMoving()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startMoving()
    {
        let moveLeft = SKAction.moveByX(0, y: -300, duration: 0.5)
        runAction(SKAction.repeatActionForever(moveLeft))
    }
    
}