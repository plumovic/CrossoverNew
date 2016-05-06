//
//  MLMovingGround.swift
//  Crossover
//
//  Created by plumovic on 4/4/16.
//  Copyright © 2016 plumovic. All rights reserved.
//test

import Foundation
import SpriteKit


class MLMovingGround: SKSpriteNode
{
    let NUMBER_OF_SEGMENTS = 20
    
    let COLOR_ONE = UIColor(red: 240.0 / 255.0, green: 180 / 255.0, blue: 100 / 255.0, alpha: 1)
    let COLOR_TWO = UIColor(red: 250.0 / 255.0, green: 200 / 255.0, blue: 110 / 255.0, alpha: 1)
    let COLOR_THREE = UIColor(red: 240.0 / 255.0, green: 190 / 255.0, blue: 120 / 255.0, alpha: 1)
    let COLOR_FOUR = UIColor(red: 220.0 / 255.0, green: 170 / 255.0, blue: 100 / 255.0, alpha: 1)
    
    init(size: CGSize)
    {
        super.init(texture: nil, color: UIColor.brownColor(), size: CGSizeMake(size.width, size.height * 2))
        anchorPoint = CGPointMake(0.5, 0)
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_ONE
            }
            else
            {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(0, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_TWO
            }
            else
            {
                segmentColor = COLOR_FOUR
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-20, CGFloat(i) * segment.size.height)
            addChild(segment)
        }

        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_THREE
            }
            else
            {
                segmentColor = COLOR_ONE
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-40, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_ONE
            }
            else
            {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-60, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_TWO
            }
            else
            {
                segmentColor = COLOR_FOUR
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-80, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_THREE
            }
            else
            {
                segmentColor = COLOR_ONE
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-100, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_ONE
            }
            else
            {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-120, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_TWO
            }
            else
            {
                segmentColor = COLOR_FOUR
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-140, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_ONE
            }
            else
            {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-170, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_THREE
            }
            else
            {
                segmentColor = COLOR_ONE
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-160, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        
        
        
        
        
        
        
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_TWO
            }
            else
            {
                segmentColor = COLOR_FOUR
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(20, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_THREE
            }
            else
            {
                segmentColor = COLOR_ONE
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(40, CGFloat(i) * segment.size.height)
            addChild(segment)
        }

        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_ONE
            }
            else
            {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(60, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_TWO
            }
            else
            {
                segmentColor = COLOR_FOUR
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(80, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_THREE
            }
            else
            {
                segmentColor = COLOR_ONE
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(100, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_ONE
            }
            else
            {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(120, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_TWO
            }
            else
            {
                segmentColor = COLOR_FOUR
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(140, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_ONE
            }
            else
            {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(170, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_THREE
            }
            else
            {
                segmentColor = COLOR_ONE
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(160, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func start()
    {
        let move = SKAction.moveByX(0, y: -frame.size.height / 2, duration: 1.8)
        let restartMove = SKAction.moveToY(0, duration: 0)
        let moveSequence = SKAction.sequence([move, restartMove])
        runAction(SKAction.repeatActionForever(moveSequence))
    }
    
}














