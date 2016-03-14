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
    
    override func didMoveToView(view: SKView) {
        screenWidth = view.frame.size.width
        screenHeight = view.frame.size.height
        
        //background color
        backgroundColor = UIColor.blueColor()
        
        //play button
        var play = SKLabelNode(text: "Play")
        play.fontName = "Futura"
        play.fontSize = screenWidth * 0.1
        
        //position of the play button
        play.position = CGPoint(x: screenWidth/2.0, y: screenHeight/2.0)
        play.name = "play"

        addChild(play)
    }
}
