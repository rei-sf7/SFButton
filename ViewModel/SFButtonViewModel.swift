import Foundation
import UIKit

/// ボタンのビューモデルクラスのプロトコル
protocol SFButtonViewModelProtocol: AnyObject {
    func setAlpha(_ val: CGFloat)
    func getText() -> String
    func setText(_ val: String)
    func getFillColor() -> UIColor
    func setFillColor(_ val: UIColor)
    func getStrokeColor() -> UIColor
    func setStrokeColor(_ val: UIColor)
    func getStrokeSize() -> CGFloat
    func setStrokeSize(_ val: CGFloat)
}


/// ボタンのビューモデルクラス
final class SFButtonViewModel: SFButtonViewModelProtocol {
    
    /// ボタンのモデルクラスのプロトコル
    private let model: SFButtonModelProtocol
    
    /// 初期化
    /// - Parameter model: ボタンのモデルクラスのプロトコル
    init(_ model: SFButtonModelProtocol) {
        self.model = model
    }
    
    /// ボタンの透過度の更新
    /// - Parameter val: 透過度[0.0 - 1.0]
    public func setAlpha(_ val: CGFloat) {
        self.model.setAlpha(val)
    }
    
    /// ボタンのラベルテキストを取得する
    /// - Returns: ラベルテキストの文字列
    func getText() -> String {
//        return self.model.label.text
        return ""
    }
    
    /// ボタンのラベルテキストを更新する
    /// - Parameter val: ラベルテキストの文字列
    func setText(_ val: String) {
//        self.model.label.text = val
    }
    
    /// ボタンの塗り潰しカラーを取得する
    /// - Returns: カラー情報
    func getFillColor() -> UIColor {
        return self.model.buttonNode.fillColor
    }
    
    /// ボタンの塗り潰しカラーを更新する
    /// - Parameter val: カラー情報
    func setFillColor(_ val: UIColor) {
        self.model.buttonNode.fillColor = val
    }
    
    /// ボタンの枠線のカラーを取得する
    /// - Returns: カラー情報
    func getStrokeColor() -> UIColor {
        return self.model.buttonNode.strokeColor
    }
    
    /// ボタンの枠線のカラーを更新する
    /// - Parameter val: カラー情報
    func setStrokeColor(_ val: UIColor) {
        self.model.buttonNode.strokeColor = val
    }
    
    /// ボタンの枠線の太さを取得する
    /// - Returns: 枠線の太さのポイントサイズ
    func getStrokeSize() -> CGFloat {
        return self.model.buttonNode.lineWidth
    }
    
    /// ボタンの枠線の太さを更新する
    /// - Parameter val: 枠線の太さのポイントサイズ
    func setStrokeSize(_ val: CGFloat) {
        self.model.buttonNode.lineWidth = val
    }
}
