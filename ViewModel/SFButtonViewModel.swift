import Foundation
import UIKit

/// ボタンのビューモデルクラスのプロトコル
protocol SFButtonViewModelProtocol: AnyObject {
    func setAlpha(_ val: CGFloat)
    
    /// ボタンのラベルテキストを取得する
    /// - Returns: ラベルテキストの文字列
    func getText() -> String
    
    /// ボタンのラベルテキストを更新する
    /// - Parameter val: ラベルテキストの文字列
    func setText(_ text: String)
    
    func getStrokeColor() -> UIColor
    func setStrokeColor(_ val: UIColor)
    func getStrokeSize() -> CGFloat
    func setStrokeSize(_ val: CGFloat)
    
    /// ボタンの塗り潰しカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFillColor(_ colorName: SFColor.ColorName)
    
    /// ボタンの塗り潰しカラーを取得する
    /// - Returns: カラー情報
    func getFillColor() -> UIColor
}


/// ボタンのビューモデルクラス
final class SFButtonViewModel: SFButtonViewModelProtocol {
    
    /// ボタンのモデルクラスのプロトコル
    private let model: SFButtonModelProtocol
    
    /// 初期化
    /// - Parameter model: ボタンのモデルクラスのプロトコル
    init(_ model: SFButtonModelProtocol) {
        self.model = model
        self.setFillColor(.blueWithHintsOfBlue)
    }
    
    /// ボタンの透過度の更新
    /// - Parameter val: 透過度[0.0 - 1.0]
    public func setAlpha(_ val: CGFloat) {
        self.model.setAlpha(val)
    }
    
    /// ボタンのラベルテキストを取得する
    /// - Returns: ラベルテキストの文字列
    func getText() -> String {
        return self.model.getText()
    }
    
    /// ボタンのラベルテキストを更新する
    /// - Parameter val: ラベルテキストの文字列
    func setText(_ text: String) {
        self.model.setText(text)
    }
    
    /// ボタンの塗り潰しカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFillColor(_ colorName: SFColor.ColorName) {
        self.model.setFillColor(colorName)
    }
    
    /// ボタンの塗り潰しカラーを取得する
    /// - Returns: カラー情報
    func getFillColor() -> UIColor {
        return self.model.getFillColor()
    }
    
    /// ボタンの枠線のカラーを取得する
    /// - Returns: カラー情報
    func getStrokeColor() -> UIColor {
        return self.model.button.strokeColor
    }
    
    /// ボタンの枠線のカラーを更新する
    /// - Parameter val: カラー情報
    func setStrokeColor(_ val: UIColor) {
        self.model.button.strokeColor = val
    }
    
    /// ボタンの枠線の太さを取得する
    /// - Returns: 枠線の太さのポイントサイズ
    func getStrokeSize() -> CGFloat {
        return self.model.button.lineWidth
    }
    
    /// ボタンの枠線の太さを更新する
    /// - Parameter val: 枠線の太さのポイントサイズ
    func setStrokeSize(_ val: CGFloat) {
        self.model.button.lineWidth = val
    }
}
