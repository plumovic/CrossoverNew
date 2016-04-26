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
        
        ball = SKSpriteNode(color: UIColor.orangeColor(), size: CGSizeMake(50, self.frame.size.height))

        addChild(ball)
    }

    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
}