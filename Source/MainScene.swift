import Foundation

class MainScene: CCNode {
    
    weak var Character: CCSprite!
    
    weak var hungerBar: CCSprite!
    
    weak var feedButton: CCButton!
    
    var timeLeft: Float = 100 {
        didSet {
            timeLeft = max(min(timeLeft, 10), 0)
            hungerBar.scaleX = timeLeft / Float(10)
        }
    }
    
    func didLoadFromCCB() {
        
        userInteractionEnabled = true
    }
    
    override func update(delta: CCTime) {
        timeLeft -= Float(delta)
        if timeLeft == 0 {
            //tamagachi dies
            println("gameOver")
        }
    }
    
    func feed() {
        timeLeft = 10
    }
}
