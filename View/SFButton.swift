import SpriteKit

/// ボタンのビュークラス
final class SFButton: SKNode {
    
    /// ビューモデルクラス（プロトコル経由）
    private var viewModel: SFButtonViewModelProtocol!
    
    /// ボタンの枠線の太さのポイントサイズ
    var strokeSize: CGFloat {
        get {
            return self.viewModel.getStrokeSize()
        }
        set(value) {
            self.viewModel.setStrokeSize(value)
        }
    }
    
    /// 初期化
    override convenience init() {
        self.init(0)
    }
    
    /// 初期化
    init(_ radius: CGFloat) {
        super.init()
        self.setupBindings(radius)
    }
    
    /// 初期化（定義のみ、未使用）
    /// - Parameter coder: -
    required init?(coder: NSCoder) {
        fatalError("init(coder:) \(NSLocalizedString("error_009", comment: ""))")
    }
    
    /// ViewクラスにViewModelとModelを関連付ける
    private func setupBindings(_ radius: CGFloat = 0) {
        let model = SFButtonModel(radius) as SFButtonModelProtocol
        self.viewModel = SFButtonViewModel(model) as SFButtonViewModelProtocol
        /// 親ノードに子ノードを繋げる
        let buttonNode = model.button
        self.addChild(buttonNode)
        // ボタンにイベントを追加する
        self.isUserInteractionEnabled = true
    }
    
    func setStyle(_ style: SFButtonDefine.buttonOrder) {
        self.viewModel.setStyle(style)
    }
    
    /// ボタンの塗り潰しカラーをセットする
    /// - Parameter colorName: カラーカタログのカラー名
    func setFillColor(_ colorName: SFColorDefine.ColorName) {
        self.viewModel.setFillColor(colorName)
    }
        
    /// ボタンのラベルテキストを更新する
    /// - Parameter text: ラベルテキストの文字列
    func setText(_ text: String) {
        self.viewModel.setText(text)
    }
    
    /// ボタンの枠線のカラー
    /// - Parameter colorName: カラーカタログのカラー名
    func setStrokeColor(_ colorName: SFColorDefine.ColorName) {
        self.viewModel.setStrokeColor(colorName)
    }
    
        
    /// -
    /// - Parameters:
    ///   - attribute: -
    ///   - toNode: -
    ///   - toAttribute: -
//    func setAutoLayout(_ attribute: SKNode.layout, toNode: SKNode,_ toAttribute: SKNode.layout) {
//        if attribute == .top && toAttribute == .top  {
//            self.position.y = toNode.position.y
//        }
//    }
    
    /// 画面から指が離れた時のイベント処理
    /// - Parameters:
    ///   - touches: -
    ///   - event: -
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("button tap")
        print("Y=\(self.position.y)")
        print("X=\(self.position.x)")
        print("width=\(self.frame.width)")
        print("height=\(self.frame.height)")
        // print("btnY=\(self.model.button.position.y)")
        // print("btnX=\(self.model.button.position.x)")
        // print("btnWidth=\(self.model.button.frame.width)")
        // print("btnHeight=\(self.model.button.frame.height)")
    }
}
