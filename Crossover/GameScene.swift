//
//  GameScene.swift
//  Crossover
//
//  Created by plumovic on 3/31/16.
//  Copyright (c) 2016 plumovic. All rights reserved.
//

import SpriteKit
import AVFoundation

class GameScene: SKScene, SKPhysicsContactDelegate
{
    var movingGround = MLMovingGround!()
    var ball = MLHero!()
    var shadow = MLShadow!()
    var bGSong = AVAudioPlayer()
    var isStarted = false
    var isGameOver = false
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
        tapToStart.name = "tapToStart"
        tapToStart.fontColor = UIColor.grayColor()
        tapToStart.fontName = "Noteworthy"
        tapToStart.fontSize = 25.0
        tapToStart.position = view.center
        addChild(tapToStart)
        
        physicsWorld.contactDelegate = self
        
    }
    
    func start()
    {
        isStarted = true
        movingGround.start()
        ball.moveBall()
        playBackgroundMusic("backgroundSong.wav")
        handGenerator.startGeneratingHandsEvery(0.7)
        let tapToStart = childNodeWithName("tapToStart")
        tapToStart?.removeFromParent()
    }
    
    func gameOver()
    {
        isGameOver = true
        ball.physicsBody = nil
        handGenerator.stopHands()
        movingGround.stop()
        ball.stop()
        
        let gameOverLabel = SKLabelNode(text: "Game Over!")
        gameOverLabel.fontColor = UIColor.blackColor()
        gameOverLabel.fontName = "Noteworthy"
        gameOverLabel.position.x = view!.center.x
        gameOverLabel.position.y = view!.center.y
        addChild(gameOverLabel)
    }
    
    func restart()
    {
        let newScene = GameScene(size: view!.bounds.size)
        newScene.scaleMode = .AspectFill
        
        view?.presentScene(newScene)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        if isGameOver
        {
            restart()
        }
        else if !isStarted
        {
            start()
        }
        else
        {
            ball.crossover()
            shadow.crossover()
        }
    }
   
    func didBeginContact(contact: SKPhysicsContact)
    {
        gameOver()
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
