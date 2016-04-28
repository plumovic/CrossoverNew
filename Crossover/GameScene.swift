//
//  GameScene.swift
//  Crossover
//
//  Created by plumovic on 3/31/16.
//  Copyright (c) 2016 plumovic. All rights reserved.
//

import SpriteKit
import AVFoundation

class GameScene: SKScene
{
    var movingGround = MLMovingGround!()
    var ball = MLHero!()
    var bGSong = AVAudioPlayer()
    
    override func didMoveToView(view: SKView)
    {
        backgroundColor = UIColor.darkGrayColor()
        
        movingGround = MLMovingGround(size: CGSizeMake(50, frame.size.height))
        movingGround.position = CGPointMake(view.frame.size.width / 2 , 0)
        addChild(movingGround)
        
        ball = MLHero()
        ball.position = CGPointMake(movingGround.position.x + movingGround.frame.size.width / 2 + ball.frame.size.width / 2, 70)
        addChild(ball)
        ball.moveBall()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        ball.stop()
        
        playBackgroundMusic("backgroundSong.wav")
    }
   
    override func update(currentTime: CFTimeInterval)
    {
        /* Called before each frame is rendered */
    }
    
    //background song
    func playBackgroundMusic(filename: String)
    {
        let url = NSBundle.mainBundle().URLForResource("backgroundSong.wav", withExtension: nil)
        
        do
        {
            bGSong = try AVAudioPlayer(contentsOfURL: url!)
            bGSong.numberOfLoops = -1
            bGSong.prepareToPlay()
            bGSong.play()
        }
            
        catch let error as NSError
        {
            print(error.description)
        }
    }
}
