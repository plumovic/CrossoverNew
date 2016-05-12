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
    var shadow = MLShadow!()
    var bGSong = AVAudioPlayer()
    var isStarted = false
    var handGenerator = MLHandGenerator!()
    
    override func didMoveToView(view: SKView)
    {
        backgroundColor = UIColor.darkGrayColor()
        
        movingGround = MLMovingGround(size: CGSizeMake(MLGroundWidth, frame.size.height))
        movingGround.position = CGPointMake(view.frame.size.width / 2 , 0)
        movingGround.zPosition = -10
        addChild(movingGround)
        
        ball = MLHero()
        ball.position = CGPointMake(movingGround.position.x + movingGround.frame.size.width / 2 + ball.frame.size.width / 2 + 40, 70)
        addChild(ball)
        
        shadow = MLShadow()
        shadow.position = CGPointMake(movingGround.position.x + movingGround.frame.size.width / 2 + ball.frame.size.width / 2 + 45, 69)
        shadow.zPosition = -5
        addChild(shadow)
        
        handGenerator = MLHandGenerator(color: UIColor.clearColor(), size: view.frame.size)
        handGenerator.position = view.center
        handGenerator.zPosition = 0
        addChild(handGenerator)
        
        let tapToStart = SKLabelNode(text: "Tap To Start!")
        tapToStart.fontColor = UIColor.grayColor()
        tapToStart.fontName = "Noteworthy"
        tapToStart.position = view.center
        addChild(tapToStart)
        
    }
    
    func start()
    {
        isStarted = true
        movingGround.start()
        ball.moveBall()
        playBackgroundMusic("backgroundSong.wav")
        handGenerator.startGeneratingHandsEvery(0.7)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        if !isStarted
        {
            start()
        }
        else
        {
            ball.crossover()
            shadow.crossover()
        }
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
