//
//  PlayScene.swift
//  BoxSwipe
//
//  Created by Abinesh Sarvepalli on 2/29/16.
//  Copyright © 2016 ARRA. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class PlayScene: SKScene {
    private var screenWidth: CGFloat!
    private var screenHeight: CGFloat!
    
    var play: SKLabelNode!
    
    override func didMoveToView(view: SKView) {
        screenWidth = view.frame.size.width
        screenHeight = view.frame.size.height
        
        //background color
        backgroundColor = UIColor.blueColor()
        
        //play button
        play = SKLabelNode(text: "Play")
        play.fontName = "Futura"
        play.fontSize = screenWidth * 0.1
        
        //position of the play button
        play.position = CGPoint(x: screenWidth/2.0, y: screenHeight/2.0)
        play.name = "play"

        play.alpha = 0.5
        
        addChild(play)
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event)
        
        let touch = touches.first as UITouch!
        let point = touch.locationInView(self.view)
        let node = self.nodeAtPoint(point)
        
        if node.name == play.name {
            let gameScene = GameScene(size: scene!.size)
            gameScene.scaleMode = .AspectFill
            self.view?.presentScene(gameScene, transition: SKTransition.revealWithDirection(.Left, duration: 0.5))
        }
    }

}
