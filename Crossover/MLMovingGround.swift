//
//  MLMovingGround.swift
//  Crossover
//
//  Created by plumovic on 4/4/16.
//  Copyright © 2016 plumovic. All rights reserved.
//

import Foundation
import SpriteKit

class MLMovingGround: SKSpriteNode
{
    let NUMBER_OF_SEGMENTS = 5
    let NUMBER_OF_SEGMENTS2 = 5
    let NUMBER_OF_SEGMENTS3 = 5
    let NUMBER_OF_SEGMENTS4 = 5
    let NUMBER_OF_SEGMENTS5 = 5
    let NUMBER_OF_SEGMENTS6 = 5
    let NUMBER_OF_SEGMENTS7 = 5
    
    let COLOR_ONE = UIColor(red: 240.0 / 255.0, green: 180 / 255.0, blue: 100 / 255.0, alpha: 1)
    let COLOR_TWO = UIColor(red: 250.0 / 255.0, green: 200 / 255.0, blue: 110 / 255.0, alpha: 1)
    let COLOR_THREE = UIColor(red: 240.0 / 255.0, green: 190 / 255.0, blue: 120 / 255.0, alpha: 1)
    let COLOR_FOUR = UIColor(red: 220.0 / 255.0, green: 170 / 255.0, blue: 100 / 255.0, alpha: 1)
    
    init(size: CGSize)
    {
        super.init(texture: nil, color: UIColor.brownColor(), size: CGSizeMake(size.width, size.height + 7))
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
        
        for var i = 0; i < NUMBER_OF_SEGMENTS2; i++
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
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS2)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-50, CGFloat(i) * segment.size.height)
            addChild(segment)
        }

        for var i = 0; i < NUMBER_OF_SEGMENTS3; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_FOUR
            }
            else
            {
                segmentColor = COLOR_TWO
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS3)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-100, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS4; i++
        {
            var segmentColor = UIColor()
            if i % 2 == 0
            {
                segmentColor = COLOR_TWO
            }
            else
            {
                segmentColor = COLOR_ONE
            }
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS4)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(-150, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS5; i++
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
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS5)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(50, CGFloat(i) * segment.size.height)
            addChild(segment)
        }
        
        for var i = 0; i < NUMBER_OF_SEGMENTS6; i++
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
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS6)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(100, CGFloat(i) * segment.size.height)
            addChild(segment)
        }

        for var i = 0; i < NUMBER_OF_SEGMENTS7; i++
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
            
            let segment = SKSpriteNode(color: segmentColor, size: CGSizeMake(self.size.width, self.size.height / CGFloat(NUMBER_OF_SEGMENTS7)))
            segment.anchorPoint = CGPointMake(0.5, 0)
            segment.position = CGPointMake(150, CGFloat(i) * segment.size.height)
            addChild(segment)
        }


    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}














