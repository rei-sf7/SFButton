import UIKit
import SpriteKit

/// ボタンのモデルクラスのプロトコル
protocol SFButtonModelProtocol: AnyObject {
    /// ボタンのノード
    var buttonNode: SKShapeNode { get }
    /// ラベルのノード
    var labelNode: SFLabel { get }

    /// ボタンの塗り潰しカラーの更新
    /// - Parameter val: カラー情報
    func setPanelColor(_ val: UIColor)

    func setPanelSize(_ val: CGSize)

    /// ボタンの表示・非表示の切り替え
    /// - Parameter val: 有効・無効フラグ
    func setEnable(_ val: Bool)

    /// ボタンの透過度の更新
    /// - Parameter val: 透過度[0.0 - 1.0]
    func setAlpha(_ val: CGFloat)
}

/// ボタンのモデルクラス
final class SFButtonModel: SFButtonModelProtocol {
    /// ボタンのノード
    private(set) var buttonNode: SKShapeNode
    /// ラベルのノード
    private(set) var labelNode: SFLabel
    
    /// 初期化
    init() {
        self.buttonNode = SKShapeNode(rectOf: CGSize(width: 80, height: 30), cornerRadius: 5)
        self.buttonNode.position = CGPoint(x: self.buttonNode.frame.size.width / 2, y: -self.buttonNode.frame.size.height / 2)
        self.buttonNode.fillColor = .lightGray
        self.buttonNode.lineWidth = 1
        self.labelNode = SFLabel()
        self.labelNode.setAlignmentMode(.center, horizontal: .center)
        self.buttonNode.addChild(self.labelNode)    /// 親ノードに子ノードを繋げる
    }
    
    
    /// ボタンの塗り潰しカラーの更新
    /// - Parameter val: カラー情報
    func setPanelColor(_ val: UIColor) {
        self.buttonNode.fillColor = val
    }
    

    func setPanelSize(_ val: CGSize) {
//        self.button.frame = CGRectMake(self.button.frame.origin.x, self.button.frame.origin.y, val.width, val.height)
//        self.label.size = val
    }
    
    /// ボタンの表示・非表示の切り替え
    /// - Parameter val: 有効・無効フラグ
    func setEnable(_ val: Bool) {
        self.buttonNode.isHidden = val
    }
    
    /// ボタンの透過度の更新
    /// - Parameter val: 透過度[0.0 - 1.0]
    func setAlpha(_ val: CGFloat) {
        self.buttonNode.alpha = val
    }
}
