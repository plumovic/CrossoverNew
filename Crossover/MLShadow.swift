//
//  MLShadow.swift
//  Crossover
//
//  Created by plumovic on 4/29/16.
//  Copyright © 2016 plumovic. All rights reserved.
//

import Foundation
import SpriteKit

class MLShadow: SKSpriteNode
{
    var shadow: SKSpriteNode!
    var shadowLeft = false
    
    init()
    {
        super.init(texture: nil, color: UIColor.clearColor(), size: CGSizeMake(50, 50))
        
        shadow = SKSpriteNode(imageNamed: "shadow")
        shadow.xScale = 1.45
        shadow.yScale = 1.45
        addChild(shadow)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func crossover()
    {
        shadowLeft = !shadowLeft
        
        var scale: CGFloat!
        
        if shadowLeft
        {
            scale = -1.0
        }
        else
        {
            scale = 1.0
        }
        
        let translate = SKAction.moveByX(scale * (size.width + MLGroundWidth + 80), y: 0, duration: 0.3)
        let flip = SKAction.scaleXTo(scale, duration: 0.01)
        
        runAction(translate)
        runAction(flip)
    }
}