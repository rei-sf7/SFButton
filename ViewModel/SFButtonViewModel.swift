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
    
    func getText() -> String {
        return self.model.label.text
    }
    func setText(_ val: String) {
        self.model.label.text = val
    }
    func getFillColor() -> UIColor {
        return self.model.button.fillColor
    }
    func setFillColor(_ val: UIColor) {
        self.model.button.fillColor = val
    }
    func getStrokeColor() -> UIColor {
        return self.model.button.strokeColor
    }
    func setStrokeColor(_ val: UIColor) {
        self.model.button.strokeColor = val
    }
    func getStrokeSize() -> CGFloat {
        return self.model.button.lineWidth
    }
    func setStrokeSize(_ val: CGFloat) {
        self.model.button.lineWidth = val
    }
}
