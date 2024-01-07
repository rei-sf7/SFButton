import Foundation
import UIKit

protocol SFButtonViewModelProtocol: AnyObject {
    func setAlpha(_ val: CGFloat)
    func getText() -> String
    func setText(_ val: String)
    func getFillColor() -> UIColor
    func setFillColor(_ val: UIColor)
}

final class SFButtonViewModel: SFButtonViewModelProtocol {
    private let model: SFButtonModelProtocol
    init(_ model: SFButtonModelProtocol) {
        self.model = model
    }
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
}
