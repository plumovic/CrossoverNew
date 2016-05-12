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
    
    func startGeneratingHandsEvery(seconds: NSTimeInterval)
    {
        generationTimer = NSTimer.scheduledTimerWithTimeInterval(seconds, target: self, selector: "generateHands", userInfo: nil, repeats: true)
    }
    
    func generateHands()
    {
        var scale: CGFloat
        let random = arc4random_uniform(2)
        if random == 0
        {
            scale = -1.0
        }
        else
        {
            scale = 1.0
        }
        
        let hand = MLHand()
        hand.position.x = scale * (MLGroundWidth / 2 + hand.size.width)
        hand.position.y = size.height / 2 + hand.size.height / 2
        addChild(hand)
    }
}