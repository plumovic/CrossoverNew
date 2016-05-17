//
//  MLHandGenerator.swift
//  Crossover
//
//  Created by plumovic on 5/4/16.
//  Copyright © 2016 plumovic. All rights reserved.

import Foundation
import SpriteKit

class MLHandGenerator: SKSpriteNode
{
    
    var generationTimer: NSTimer?
    var hands = [MLHand]()
    
    func startGeneratingHandsEvery(seconds: NSTimeInterval)
    {
        generationTimer = NSTimer.scheduledTimerWithTimeInterval(seconds, target: self, selector: "generateHands", userInfo: nil, repeats: true)
    }
    
    func stopGenerating()
    {
        generationTimer?.invalidate()
    }
    
    func generateHands()
    {
        
        var scale: CGFloat
        var xScale : CGFloat
        let random = arc4random_uniform(2)
        if random == 0
        {
            xScale = -1.0
            scale = -1.0
        }
        else
        {
            xScale = 1.0
            scale = 1.0
        }
        
        let hand = MLHand()
        hand.position.x = scale * (MLGroundWidth / 2 + hand.size.width * 1.3)
        hand.position.y = size.height / 2 + hand.size.height / 2
        hand.xScale = xScale
        hands.append(hand)
        addChild(hand)
    }
    
    func stopHands()
    {
        stopGenerating()
        for hand in hands
        {
            hand.stopMoving()
        }
    }
}