import UIKit
import SpriteKit

protocol SFButtonModelProtocol: AnyObject {
    var button: SKShapeNode { get }
    var label: SFLabel { get }
    func setPanelColor(_ val: UIColor)
    func setPanelSize(_ val: CGSize)
    func setEnable(_ val: Bool)
    func setAlpha(_ val: CGFloat)
}

final class SFButtonModel: SFButtonModelProtocol {
    private(set) var button: SKShapeNode
    private(set) var label: SFLabel
    init() {
        self.button = SKShapeNode(rectOf: CGSize(width: 80, height: 30), cornerRadius: 5)
        self.button.position = CGPoint(x: self.button.frame.size.width / 2, y: -self.button.frame.size.height / 2)
        self.button.fillColor = .systemCyan
        self.label = SFLabel()
        self.label.fontSize = 19
        self.label.fontName = .GenEiNombre
        self.label.setAlignmentMode(.center, horizontal: .center)
    }
    
    func setPanelColor(_ val: UIColor) {
        self.button.fillColor = val
    }
    
    func setPanelSize(_ val: CGSize) {
//        self.button.frame = CGRectMake(self.button.frame.origin.x, self.button.frame.origin.y, val.width, val.height)
//        self.label.size = val
    }
    func setEnable(_ val: Bool) {
        self.button.isHidden = val
    }
    func setAlpha(_ val: CGFloat) {
        self.button.alpha = val
    }
}
