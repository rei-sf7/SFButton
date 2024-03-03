import UIKit
import SpriteKit

/// ボタンのモデルクラスのプロトコル
protocol SFButtonModelProtocol: AnyObject {
    /// ボタンのノード
    var button: SKShapeNode { get }
    /// ラベルのノード
    var label: SFLabel { get }

//    /// ボタンの塗り潰しカラーの更新
//    /// - Parameter val: カラー情報
//    func setPanelColor(_ val: UIColor)

    /// ボタンの塗り潰しカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFillColor(_ colorName: SFColor.ColorName)
    
    /// ボタンの塗り潰しカラーを取得する
    /// - Returns: カラー情報
    func getFillColor() -> UIColor
    
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
    private(set) var button: SKShapeNode
    /// ラベルのノード
    private(set) var label: SFLabel
    
    /// 初期化
    init() {
        self.button = SKShapeNode(rectOf: CGSize(width: 300, height: 80), cornerRadius: 5)
        self.button.position = CGPoint(x: self.button.frame.size.width / 2, y: -self.button.frame.size.height / 2)
//        self.button.fillColor = .lightGray
        self.button.lineWidth = 1
        self.label = SFLabel()
        self.label.setFontColor(.white)
        self.label.setAlignmentMode(.center, horizontal: .center)
        self.button.addChild(self.label)    /// 親ノードに子ノードを繋げる
    }
    
    
//    /// ボタンの塗り潰しカラーの更新
//    /// - Parameter val: カラー情報
//    func setPanelColor_bk(_ val: UIColor) {
//        self.button.fillColor = val
//    }
    
    /// ボタンの塗り潰しカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFillColor(_ colorName: SFColor.ColorName) {
        self.button.fillColor = SFColor().getColor(colorName)
    }
    
    /// ボタンの塗り潰しカラーを取得する
    /// - Returns: カラー情報
    func getFillColor() -> UIColor {
        return self.button.fillColor
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
