import SpriteKit

/// ボタンのビュークラス
final class SFButton: SKNode {
    
    /// モデルクラスのプロトコル
    private var model: SFButtonModelProtocol!
    
    /// ビューモデルクラスのプロトコル
    private var viewModel: SFButtonViewModelProtocol!
    
    
    /// ボタンのラベルテキスト
    var text: String {
        get {
            return self.viewModel.getText()
        }
        set(value) {
            self.viewModel.setText(value)
        }
    }
    
    /// ボタンの塗り潰しカラー
    var fillColor: UIColor {
        get {
            return self.viewModel.getFillColor()
        }
        set(value) {
            self.viewModel.setFillColor(value)
        }
    }
    
    /// ボタンの枠線のカラー
    var strokeColor: UIColor {
        get {
            return self.viewModel.getStrokeColor()
        }
        set(value) {
            self.viewModel.setStrokeColor(value)
        }
    }
    
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
    override init() {
        super.init()
        self.setupBindings()
        self.setupCurrentNode()
    }
    
    
    /// 初期化（定義のみ、未使用）
    /// - Parameter coder: -
    required init?(coder: NSCoder) {
        fatalError("init(coder:) \(NSLocalizedString("error_009", comment: ""))")
    }
    
    /// ViewクラスにViewModelとModelを関連付ける
    private func setupBindings() {
        self.model = SFButtonModel() as SFButtonModelProtocol
        self.viewModel = SFButtonViewModel(self.model) as SFButtonViewModelProtocol
    }
    
    /// 親ノードのセッティング
    private func setupCurrentNode() {
        self.model.button.addChild(self.model.label)
        self.addChild(self.model.button)
        // ボタンにイベントを追加する
        self.isUserInteractionEnabled = true
    }
    
    /// -
    /// - Parameters:
    ///   - attribute: -
    ///   - toNode: -
    ///   - toAttribute: -
    func setAutoLayout(_ attribute: SKNode.layout, toNode: SKNode,_ toAttribute: SKNode.layout) {
        if attribute == .top && toAttribute == .top  {
            self.position.y = toNode.position.y
        }
    }
    
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
        print("btnY=\(self.model.button.position.y)")
        print("btnX=\(self.model.button.position.x)")
        print("btnWidth=\(self.model.button.frame.width)")
        print("btnHeight=\(self.model.button.frame.height)")
    }
}
