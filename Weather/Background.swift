//
//  Background.swift
//  Weather
//
//  Created by Ferdinando Liccardi on 18/11/23.
//

import Foundation
import SpriteKit

//The SKScene contains the node
class RainScene: SKScene{
    
    //add the function to start the animation
    override func sceneDidLoad() {
        
        //adding backgroung
        backgroundColor = .clear
        
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        
        //need anchor to make the rain appear
        anchorPoint = CGPoint(x: 0.5, y: 1)
        
    //need an Emitter node cause rain is a particles animation and adding to scene
    let rainEmitter = SKEmitterNode(fileNamed: "Rain.sks")!
    addChild(rainEmitter)
        
        //full width
        rainEmitter.particlePositionRange.dx = UIScreen.main.bounds.width
    
    }
}

//The SKScene contains the node
class RainLandingScene: SKScene{
    
    //add the function to start the animation
    override func sceneDidLoad() {
        
        //adding backgroung
        backgroundColor = .clear
        
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        
        //need anchor to make the rain appear
        anchorPoint = CGPoint(x: 0.5, y: 0.647)
        
    //need an Emitter node cause rain is a particles animation and adding to scene
    let rainLandingEmitter = SKEmitterNode(fileNamed: "RainLanding.sks")!
    addChild(rainLandingEmitter)
        
        //full width - frame
        rainLandingEmitter.particlePositionRange.dx = UIScreen.main.bounds.width - 70
    
    }
}

//The SKScene contains the node of Cloud
class CloudScene: SKScene{
    
    //add the function to start the animation
    override func sceneDidLoad() {
        
        //adding backgroung
        backgroundColor = .clear
        
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        
        //need anchor to make the rain appear
        anchorPoint = CGPoint(x: 0.3, y: 0.91)
        
    //need an Emitter node cause clouds is a particles animation and adding to scene
    let cloudsEmitter = SKEmitterNode(fileNamed: "Clouds.sks")!
    addChild(cloudsEmitter)
        
       
    }
}

//The SKScene contains the node of the moon
class MoonScene: SKScene{
    
    //add the function to start the animation
    override func sceneDidLoad() {
        
        //adding backgroung
        backgroundColor = .clear
        
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        
        //need anchor to make the moon appear
        anchorPoint = CGPoint(x: 0.8, y: 0.87)
        
    //need an Emitter node cause moon is a particle (just one) animation and adding to scene
    let moonEmitter = SKEmitterNode(fileNamed: "Moon.sks")!
    addChild(moonEmitter)
        
   
    
        
    }
}

//The SKScene contains the node of the stars
class StarScene: SKScene{
    
    //add the function to start the animation
    override func sceneDidLoad() {
        
        //adding backgroung
        backgroundColor = .clear
        
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        
        //need anchor to make the stars appear
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
    //need an Emitter node cause star is a particles animation and adding to scene
    let starEmitter = SKEmitterNode(fileNamed: "Star.sks")!
    addChild(starEmitter)
        
        //full height
        starEmitter.particlePositionRange.dx = UIScreen.main.bounds.height
    
        
    }
}

//The SKScene contains the node of the sun
class SunScene: SKScene{
    
    //add the function to start the animation
    override func sceneDidLoad() {
        
        //adding backgroung
        backgroundColor = .clear
        
        size = UIScreen.main.bounds.size
        scaleMode = .resizeFill
        
        //need anchor to make the sun appear
        anchorPoint = CGPoint(x: 0.8, y: 0.85)
        
    //need an Emitter node cause sun is a particles animation (just one) and adding to scene
    let sunEmitter = SKEmitterNode(fileNamed: "Sun.sks")!
    addChild(sunEmitter)
    
    
        
    }
}
