import UIKit
import SpriteKit

/// ボタンのモデルクラスのプロトコル
protocol SFButtonModelProtocol: AnyObject {
    var button: SKShapeNode { get }
    var label: SFLabel { get }
    func setPanelColor(_ val: UIColor)
    func setPanelSize(_ val: CGSize)
    func setEnable(_ val: Bool)
    func setAlpha(_ val: CGFloat)
}

/// ボタンのモデルクラス
final class SFButtonModel: SFButtonModelProtocol {
    /// ノード
    private(set) var button: SKShapeNode
    /// ラベル
    private(set) var label: SFLabel
    
    /// 初期化
    init() {
        self.button = SKShapeNode(rectOf: CGSize(width: 80, height: 30), cornerRadius: 5)
        self.button.position = CGPoint(x: self.button.frame.size.width / 2, y: -self.button.frame.size.height / 2)
        self.button.fillColor = .lightGray
        self.button.lineWidth = 1
        self.label = SFLabel()
        self.label.setAlignmentMode(.center, horizontal: .center)
    }
    
    
    /// ボタンの塗り潰しカラーの更新
    /// - Parameter val: カラー情報
    func setPanelColor(_ val: UIColor) {
        self.button.fillColor = val
    }
    
    func setPanelSize(_ val: CGSize) {
//        self.button.frame = CGRectMake(self.button.frame.origin.x, self.button.frame.origin.y, val.width, val.height)
//        self.label.size = val
    }
    
    /// ボタンの表示・非表示の切り替え
    /// - Parameter val: 有効・無効フラグ
    func setEnable(_ val: Bool) {
        self.button.isHidden = val
    }
    
    /// ボタンの透過度の更新
    /// - Parameter val: 透過度[0.0 - 1.0]
    func setAlpha(_ val: CGFloat) {
        self.button.alpha = val
    }
}
