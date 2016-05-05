//
//  MLHandGenerator.swift
//  Crossover
//
//  Created by plumovic on 5/4/16.
//  Copyright © 2016 plumovic. All rights reserved.
//

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
        let hand = MLHand()
    }
}